#! /usr/bin/awk -f

BEGIN { FS=","
    OFS=","
}

NR==1{next;}

$10!="" {print $4, $10, $26} 

#./first2.awk 2015streetdata.csv | sort -rn > diameter_sorted._pipe.csv
# ./second.awk diameter_sorted.csv | sort | uniq -c | sort -rn | head -1   
# ./third.awk diameter_sorted.csv | uniq -c | sort -rn > zipcodes.csv
# ./four.awk zipcodes.csv   

