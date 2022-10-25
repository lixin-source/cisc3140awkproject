#!/bin/awk -f

BEGIN { FS = "," }

$8 == "Good" { print $30 }

#for more accurate numbers use:
#	/Good/&&/Brooklyn/ {++gb}
#	/Good/&&/Manhattan/ {++gm}
#	/Good/&&/Bronx/ {++gbx}
#	/Good/&&/Staten Island/ {++gs}
#	/Good/&&/Queens/ {++gq}

END { } 

#more accurate numbers:
# 	print "Brooklyn: " gb " trees"
#	print "Manhattan: " gm " trees"
#	print "Bronx: " gbx " trees"
#	print "Staten Island: " gs " trees"
#	print "Queens: " gq " trees"
