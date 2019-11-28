# xapian-example

This is a simple example of using Xapian in Python to index a set of
documents and then search them.


## Prerequisites

The following RPMs need to be installed:

 * perl-interpreter
 * python3-xapian


## Running the Example

Build the data and index it with `make`.

Browse the data file with `less data` to get some idea what kinds of things you might search for.

Do a test search with `make test`.

Do your own searches with `./search index YOUR SEARCH TERMS`.
