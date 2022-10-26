#! /usr/bin/awk -f

#tree_type.awk

BEGIN { 
    FS=","
}
# print the top 1% of trees from sample. In this case this value
# was ~650000

{print $2} NR==650000{exit}



