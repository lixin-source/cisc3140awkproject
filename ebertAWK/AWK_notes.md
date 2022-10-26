# **Saoirse Siobhan Ebert: Using AWK**

## *Objective*
- Use AWK script files and other commands to manipulate, narrow, and analyze down data from:

[2015 NYC Street Tree Census](https://data.cityofnewyork.us/Environment/2015-Street-Tree-Census-Tree-Data/uvpi-gqnh)

My objective was to not only find the largest trees in NYC and location of such trees, but specifically where I could find a tree representative of common big trees found in the city and where you could find such a tree. I think of this tree as the tree mascot for NYC and where they might "live"!

1. Sort the data by largest tree diameter and print to an output .csv file. The tree species were listed largest to smallest diameter
2. Use the output file to analyze the top 1% of big trees. Find the tree name that is most prevelant using `uniq -c` and resorting by occurence. You could also print the results to the console if wanted to view the entire list
3. Use the name of the tree from previous step to find the most prevelant zipcodes that that tree is found. I output a .csv file to show these zipcodes
4. In this case I found that 11234 zipcode again using `uniq -c` then sorting which had the most prevelant occurence of the London planetree which on average was one of the largest species of trees found in NYC. I printed this zipcode to the terminal along with a message to make the final result clear to the user.

## **Terminal commands to accomplish task**

## *First Step*

```
./tree_diameter.awk 2015streetdata.csv | sort -rn > diameter_sorted.csv
```

[Sorted by Diameter](https://github.com/lixin-source/cisc3140awkproject/blob/main/ebertAWK/AWKfiles/tree_diameter.awk)

## *Second Step*

```
./tree_type.awk diameter_sorted.csv | sort | uniq -c | sort -rn | head -1 
```

[Finding prevelant big tree species](https://github.com/lixin-source/cisc3140awkproject/blob/main/ebertAWK/AWKfiles/tree_type.awk)

## *Third Step*

```
./zipcodes.awk diameter_sorted.csv | sort -rn | uniq -c | sort -rn > zipcodes.csv
```

[Zipcode Prevelance](https://github.com/lixin-source/cisc3140awkproject/blob/main/ebertAWK/AWKfiles/zipcodes.awk)

## *Fourth Step*

```
./zipcode_result.awk zipcodes.csv 
```
[Zipcode Result](https://github.com/lixin-source/cisc3140awkproject/blob/main/ebertAWK/AWKfiles/zipcode_result.awk)




