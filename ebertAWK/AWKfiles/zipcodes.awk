#! /usr/bin/awk -f

BEGIN { FS="," }

$2 == "London planetree" {print $3}
