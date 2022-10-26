#!/bin/awk -f

BEGIN {
	FS = ","
	NR >= 2
	$8 = "Fair" && $13 = "Damage"
	count = 0
}

{ 
	# 16-18
	# if atleast one yes, then add row to count
	# else, continue
	count++
}

END {

	print count
}
