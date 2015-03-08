#!/usr/bin/python

# this script is based on example from
# https://docs.python.org/2/library/argparse.html#module-argparse
# pay attention that this example has already functionality of processing some integers

import argparse

parser = argparse.ArgumentParser(description='Process some integers.')
parser.add_argument('integers', metavar='N', type=int, nargs='+',
                    help='an integer for the accumulator')
parser.add_argument('--sum', dest='accumulate', action='store_const', const=sum,
                    default=max, help='sum the integers (default: find the max)')
args = parser.parse_args()

# script code
print(args.accumulate(args.integers))
