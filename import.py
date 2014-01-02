#!/usr/bin/env python

import argparse
import logging
import qif

from gnucash import Session, Transaction, Split

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-f', '--gnucash-file', help='Gnucash data file')
    parser.add_argument('file', nargs='+', help='Input QIF file(s)')

    args = parser.parse_args()    

    logging.basicConfig(level=logging.DEBUG)
    print args

    all_items = []
    for fn in args.file:
        logging.debug('Reading %s..', fn)
        with open(fn) as fd:
            items = qif.parse_qif(fd)
            logging.debug('Read %s items from %s..', len(items), fn)
            all_items.extend(items)

    session = Session(args.gnucash_file)


    session.save()
    session.end()
