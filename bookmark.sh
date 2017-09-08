#!/bin/bash


function add {
	echo "$1 | $2" >> ~/.bookmarks
}
function remove{
	sed-i'$1'/d' ~/.bookmarks
}


fetch($2) #fetch function

case $1 in
	a)
		add $2 $3
		;;
	r)
		remove $2
		;;
	f)
		fetch $2
		;;
	*)
		echo "Error: Invalid Argument"
		return
esac
