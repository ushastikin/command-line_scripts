#!/usr/bin/python

# This script is based on example from
# https://docs.python.org/2/library/argparse.html#module-argparse (which uses a little bit
# advanced argparse options).
# Pay attention that this example has already functionality.

import argparse

parser = argparse.ArgumentParser(description='Process some integers.')
# basic options
parser.add_argument('--name', type=str, help='your name')
# advanced options
parser.add_argument('integers', metavar='N', type=int, nargs='+',
                    help='an integer for the accumulator')
parser.add_argument('--sum', dest='accumulate', action='store_const', const=sum,
                    default=max, help='sum the integers (default: find the max)')
args = parser.parse_args()

# script code
result = args.accumulate(args.integers)  # accumulate the provided integers
print(f"{args.name} the result is {result}")
