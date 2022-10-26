#!/bin/awk -f

BEGIN {
		FS = ","
		NR >= 2
		$8 = "Good" && $13 = "Damage"
		count = 0
	}

{ 
	       count++     }
END {
	print count
}
