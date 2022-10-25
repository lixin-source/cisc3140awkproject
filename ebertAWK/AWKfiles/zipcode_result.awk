#! /usr/bin/awk -f
BEGIN { print "Print the zipcode where the tree is most populated in NYC: " }
NR==1 { print $2 }
