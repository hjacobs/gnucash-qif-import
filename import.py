#!/usr/bin/env python

import argparse
import datetime
import logging
import qif

from gnucash import Session, Transaction, Split, GncNumeric

def lookup_account_by_path(root, path):
    acc = root.lookup_by_name(path[0])
    if acc.get_instance() == None:
        raise Exception('Account {} not found'.format(name))
    if len(path) > 1:
        return lookup_account_by_path(acc, path[1:])
    return acc

def lookup_account(root, name):
    path = name.split(':')
    return lookup_account_by_path(root, path)

def add_transaction(book, item, currency):
    logging.info('Adding transaction for account "%s" (%s %s)..', item.account, item.split_amount, currency.get_mnemonic())
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

def main(args):
    logging.basicConfig(level=logging.DEBUG if args.verbose else logging.INFO)

    all_items = []
    for fn in args.file:
        logging.debug('Reading %s..', fn)
        with open(fn) as fd:
            items = qif.parse_qif(fd)
            logging.debug('Read %s items from %s..', len(items), fn)
            all_items.extend(items)

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
    parser.add_argument('-v', '--verbose', help='Verbose logging', action='store_true')
    parser.add_argument('-c', '--currency', help='Currency', default='EUR')
    parser.add_argument('-f', '--gnucash-file', help='Gnucash data file')
    parser.add_argument('file', nargs='+', help='Input QIF file(s)')

    args = parser.parse_args()    
    main(args)

