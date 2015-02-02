#!/usr/bin/env python
# -*- coding: utf-8 -*-

'''
GnuCash Python helper script to import transactions from QIF text files into GnuCash's own file format.

https://github.com/hjacobs/gnucash-qif-import
'''

import argparse
import datetime
import json
import logging
import os
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
    amount = int(float(item.split_amount) * currency.get_fraction())
    s1.SetValue(GncNumeric(amount, currency.get_fraction()))
    s1.SetAmount(GncNumeric(amount, currency.get_fraction()))

    acc2 = lookup_account(root, item.split_category)
    s2 = Split(book)
    s2.SetParent(tx)
    s2.SetAccount(acc2)
    s2.SetValue(GncNumeric(amount * -1, currency.get_fraction()))
    s2.SetAmount(GncNumeric(amount * -1, currency.get_fraction()))

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


def read_entries_from_mtp(pattern, imported):
    entries = []
    regex = re.compile(pattern)
    for file_id, filename in get_mtp_files():
        if regex.match(filename):
            logging.debug('Found matching file on MTP device: "%s" (ID: %s)', filename, file_id)
            if filename in imported:
                logging.info('Skipping %s (already imported)', filename)
            else:
                entries.extend(read_entries_from_mtp_file(file_id, filename))
                imported.add(filename)
    return entries


def read_entries(fn, imported):
    logging.debug('Reading %s..', fn)
    if fn.startswith(MTP_SCHEME):
        items = read_entries_from_mtp(fn[len(MTP_SCHEME):], imported)
    else:
        base = os.path.basename(fn)
        if base in imported:
            logging.info('Skipping %s (already imported)', base)
            return []
        with open(fn) as fd:
            items = qif.parse_qif(fd)
        imported.add(fn)
    logging.debug('Read %s items from %s', len(items), fn)
    return items


def write_transactions_to_gnucash(gnucash_file, currency, all_items, dry_run=False, date_from=None):
    logging.debug('Opening GnuCash file %s..', gnucash_file)
    session = Session(gnucash_file)
    book = session.book
    commod_tab = book.get_table()
    currency = commod_tab.lookup('ISO4217', currency)

    if date_from:
        date_from = datetime.datetime.strptime(date_from, '%Y-%m-%d')

    imported_items = set()
    for item in all_items:
        if date_from and item.date < date_from:
            logging.info('Skipping entry %s (%s)', item.date.strftime('%Y-%m-%d'), item.split_amount)
            continue
        if item.as_tuple() in imported_items:
            logging.info('Skipping entry %s (%s) --- already imported!', item.date.strftime('%Y-%m-%d'),
                         item.split_amount)
            continue
        add_transaction(book, item, currency)
        imported_items.add(item.as_tuple())

    if dry_run:
        logging.debug('** DRY-RUN **')
    else:
        logging.debug('Saving GnuCash file..')
        session.save()
    session.end()


def main(args):
    if args.verbose:
        lvl = logging.DEBUG
    elif args.quiet:
        lvl = logging.WARN
    else:
        lvl = logging.INFO

    logging.basicConfig(level=lvl)

    imported_cache = os.path.expanduser('~/.gnucash-qif-import-cache.json')
    if os.path.exists(imported_cache):
        with open(imported_cache) as fd:
            imported = set(json.load(fd))
    else:
        imported = set()

    all_items = []
    for fn in args.file:
        all_items.extend(read_entries(fn, imported))

    if all_items:
        write_transactions_to_gnucash(args.gnucash_file, args.currency, all_items, dry_run=args.dry_run,
                                      date_from=args.date_from)

    if not args.dry_run:
        with open(imported_cache, 'wb') as fd:
            json.dump(list(imported), fd)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('-v', '--verbose', help='Verbose (debug) logging', action='store_true')
    parser.add_argument('-q', '--quiet', help='Silent mode, only log warnings', action='store_true')
    parser.add_argument('--dry-run', help='Noop, do not write anything', action='store_true')
    parser.add_argument('--date-from', help='Only import transaction >= date (YYYY-MM-DD)')
    parser.add_argument('-c', '--currency', metavar='ISOCODE', help='Currency ISO code (default: EUR)', default='EUR')
    parser.add_argument('-f', '--gnucash-file', help='Gnucash data file')
    parser.add_argument('file', nargs='+',
                        help='Input QIF file(s), can also be "mtp:<PATTERN>" to import from MTP device')

    args = parser.parse_args()
    main(args)

