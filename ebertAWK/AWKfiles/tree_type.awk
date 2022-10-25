#! /usr/bin/awk -f

BEGIN { 
    FS=","
}
	
{print $2} NR==650000{exit}

	   #print the first tree here

# somehow find the most occurring value at $10

#./first.awk 2015streetdata.csv | sort -rn | awk -F, '{print $2}' | sort | uniq -c | awk -F, '{print $1}'



