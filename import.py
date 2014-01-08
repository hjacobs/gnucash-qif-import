#!/usr/bin/env python
# -*- coding: utf-8 -*-

import argparse
import datetime
import logging
import re
import subprocess
import tempfile
import qif

from gnucash import Session, Transaction, Split, GncNumeric

MTP_SCHEME = 'mtp:'


def lookup_account_by_path(root, path):
    acc = root.lookup_by_name(path[0])
    if acc.get_instance() == None:
        raise Exception('Account path {} not found'.format(':'.join(path)))
    if len(path) > 1:
        return lookup_account_by_path(acc, path[1:])
    return acc


def lookup_account(root, name):
    path = name.split(':')
    return lookup_account_by_path(root, path)


def add_transaction(book, item, currency):
    logging.info('Adding transaction for account "%s" (%s %s)..', item.account, item.split_amount,
                 currency.get_mnemonic())
    root = book.get_root_account()
    acc = lookup_account(root, item.account)

    tx = Transaction(book)
    tx.BeginEdit()
    tx.SetCurrency(currency)
    tx.SetDateEnteredTS(datetime.datetime.now())
    tx.SetDatePostedTS(item.date)
    tx.SetDescription(item.memo)

    s1 = Split(book)
    s1.SetParent(tx)
    s1.SetAccount(acc)
    amount = int(item.split_amount.replace('.', ''))
    s1.SetValue(GncNumeric(amount, 100))
    s1.SetAmount(GncNumeric(amount, 100))

    acc2 = lookup_account(root, item.split_category)
    s2 = Split(book)
    s2.SetParent(tx)
    s2.SetAccount(acc2)
    s2.SetValue(GncNumeric(amount * -1, 100))
    s2.SetAmount(GncNumeric(amount * -1, 100))

    tx.CommitEdit()


def read_entries_from_mtp_file(file_id, filename):
    with tempfile.NamedTemporaryFile(suffix=filename) as fd:
        subprocess.check_call(['mtp-getfile', file_id, fd.name])
        entries_from_qif = qif.parse_qif(fd)
    logging.debug('Read %s entries from %s', len(entries_from_qif), filename)
    return entries_from_qif


def get_mtp_files():
    '''list all files on MTP device and return a tuple (file_id, filename) for each file'''

    # using mtp-tools instead of pymtp because I could not get pymtp to work (always got segmentation fault!)
    out = subprocess.check_output('mtp-files 2>&1', shell=True)
    last_file_id = None
    for line in out.splitlines():
        cols = line.strip().split(':', 1)
        if len(cols) == 2:
            key, val = cols
            if key.lower() == 'file id':
                last_file_id = val.strip()
            elif key.lower() == 'filename':
                filename = val.strip()
                yield (last_file_id, filename)


def read_entries_from_mtp(pattern):
    entries = []
    regex = re.compile(pattern)
    for file_id, filename in get_mtp_files():
        if regex.match(filename):
            logging.debug('Found matching file on MTP device: "%s" (ID: %s)', filename, file_id)
            entries.extend(read_entries_from_mtp_file(file_id, filename))
    return entries


def read_entries(fn):
    logging.debug('Reading %s..', fn)
    if fn.startswith(MTP_SCHEME):
        items = read_entries_from_mtp(fn[len(MTP_SCHEME):])
    else:
        with open(fn) as fd:
            items = qif.parse_qif(fd)
    logging.debug('Read %s items from %s', len(items), fn)
    return items


def main(args):
    if args.verbose:
        lvl = logging.DEBUG
    elif args.quiet:
        lvl = logging.WARN
    else:
        lvl = logging.INFO

    logging.basicConfig(level=lvl)

    all_items = []
    for fn in args.file:
        all_items.extend(read_entries(fn))

    logging.debug('Opening GnuCash file %s..', args.gnucash_file)
    session = Session(args.gnucash_file)
    book = session.book
    commod_tab = book.get_table()
    currency = commod_tab.lookup('ISO4217', args.currency)

    for item in all_items:
        add_transaction(book, item, currency)

    logging.debug('Saving GnuCash file..')
    session.save()
    session.end()


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-v', '--verbose', help='Verbose (debug) logging', action='store_true')
    parser.add_argument('-q', '--quiet', help='Silent mode, only log warnings', action='store_true')
    parser.add_argument('-c', '--currency', metavar='ISOCODE', help='Currency ISO code (default: EUR)', default='EUR')
    parser.add_argument('-f', '--gnucash-file', help='Gnucash data file')
    parser.add_argument('file', nargs='+',
                        help='Input QIF file(s), can also be "mtp:<PATTERN>" to import from MTP device')

    args = parser.parse_args()
    main(args)

