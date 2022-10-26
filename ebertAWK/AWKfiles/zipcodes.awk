#! /usr/bin/awk -f

#zipcodes.awk

BEGIN { FS="," }

#if the tree name is listed in the column,
# print the zipcode associated with it
$2 == "London planetree" {print $3}




