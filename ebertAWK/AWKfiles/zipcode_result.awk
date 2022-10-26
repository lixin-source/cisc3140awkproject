#! /usr/bin/awk -f

#zipcode_result.awk

BEGIN { print "Print the zipcode where the tree is most populated in NYC: " }
#print just the first entry from our sorted zipcode csv file
NR==1 { print $2 }


