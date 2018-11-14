#!/usr/bin/python

# Import relevant module
import sys

# For every line in the data...
for line in sys.stdin:
    
    # ...strip and split it
    data = line.strip().split(' ')
    
    # ...if it has six values
    if len(data) == 5:
        
        # ...unpack them
        time, store, item, price, payment = data

        # ...print the key-value pair
        print '{0}\t{1}'.format(item, price)
