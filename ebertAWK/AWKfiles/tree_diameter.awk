#! /usr/bin/awk -f

#tree_diameter.awk

BEGIN { FS=","
    OFS=","
}
#skip header line
NR==1{next;}

#print the diameter, tree name and zipcode fields
#do not print lines that have no tree name included
$10!="" {print $4, $10, $26} 

