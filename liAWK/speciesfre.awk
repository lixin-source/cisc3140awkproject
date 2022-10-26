#!/bin/awk-f
BEGIN {
	FS = ","
	NR >= 2
	$7 = "alive"
	}
{ frequency[$10]++ }

END {

	for (i in frequency)
		print frequency[i], i
}

# First, seperate fields with columns only counting the rows without column names
# Then, create dictionary for each unique value in "spec_comm" and count freq of it
# Last, print the dictionary
