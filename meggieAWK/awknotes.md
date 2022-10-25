## Objective
My objective was to find the borough with the healthiest trees and rank them from high to low

## run this command to see results:
awk -f trees.awk 2015_Street_Tree_Census_-_Tree_Data.csv | sort | uniq -c | sort -nr

## Then run on trees_output.csv for a cleaner look:
awk 'NR==1, NR==5 {print NR, $0}' trees_output.csv