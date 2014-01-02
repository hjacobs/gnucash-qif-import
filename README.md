GnuCash QIF Import
------------------

GnuCash Python helper script to import transactions from QIF text files into GnuCash .gnucash file.

Prerequisities
==============

* Python 2.7+
* GnuCash 2.4+
* GnuCash Python Bindings

Getting Started
===============

For Ubuntu 13.04:

    sudo apt-get install gnucash python-gnucash
    ./import.py -v -f examples/accounts.gnucash examples/expenses.qif
