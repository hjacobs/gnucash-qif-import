#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
A simple class to represent a Quicken (QIF) file, and a parser to
load a QIF file into a sequence of those classes.

It's enough to be useful for writing conversions.

Original source from http://code.activestate.com/recipes/306103-quicken-qif-file-class-and-conversion/
"""

import sys
import datetime


class QifItem:

    def __init__(self):
        self.order = [
            'date',
            'account',
            'amount',
            'cleared',
            'num',
            'payee',
            'memo',
            'address',
            'category',
            'split_category',
            'split_memo',
            'split_amount',
        ]
        self.type = None
        self.date = None
        self.account = None
        self.amount = None
        self.cleared = None
        self.num = None
        self.payee = None
        self.memo = None
        self.address = None
        self.category = None
        self.split_category = None
        self.split_memo = None
        self.split_amount = None

    def as_tuple(self):
        return tuple([self.__dict__[field] for field in self.order])

    def __str__(self):
        titles = ','.join(self.order)
        tmpstring = ','.join([str(self.__dict__[field]) for field in self.order])
        tmpstring = tmpstring.replace('None', '')
        return titles + '\n' + tmpstring


def parse_qif(infile):
    """
    Parse a qif file and return a list of entries.
    infile should be open file-like object (supporting readline() ).
    """

    account = None
    items = []
    curItem = QifItem()
    for line in infile:
        firstchar = line[0]
        data = line[1:].strip()
        if firstchar == '\n':  # blank line
            pass
        elif firstchar == '^':
                               # end of item
            if curItem.type != 'Account':
                # save the item
                items.append(curItem)
            curItem = QifItem()
            curItem.account = account
        elif firstchar == 'D':
            year, month, day = map(int, data.split('/'))
            curItem.date = datetime.datetime(year=year, month=month, day=day)
        elif firstchar == 'T':
            curItem.amount = data
        elif firstchar == 'C':
            curItem.cleared = data
        elif firstchar == 'P':
            curItem.payee = data
        elif firstchar == 'M':
            curItem.memo = data
        elif firstchar == 'A':
            curItem.address = data
        elif firstchar == 'L':
            curItem.category = data
        elif firstchar == 'S':
            curItem.split_category = data
        elif firstchar == 'E':
            curItem.split_memo = data
        elif firstchar == '$':
            curItem.split_amount = data
        elif firstchar == 'N':
            if curItem.type == 'Account':
                account = data
        elif firstchar == '!':
            curItem.type = data
        else:
            # don't recognise this line; ignore it
            print >> sys.stderr, 'Skipping unknown line:\n', line

    return items


if __name__ == '__main__':
    # read from stdin and write CSV to stdout
    items = parse_qif(sys.stdin)
    for item in items:
        print item
