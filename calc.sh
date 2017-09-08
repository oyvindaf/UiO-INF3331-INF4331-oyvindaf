#!/bin/bash

# script should take a number

op=$1
tall=${@:2:$#}

#product, sum, max and min functions

if [ -z "$2" ]
	then
		echo "No number supplied"
fi

function productfunc {
	local accumulator=$1
    
	for i in ${@: 2}; do
		accumulator=$( echo "$accumulator*$i" | bc -l )
	done

	echo $accumulator
}


function sumfunc {
	local accumulator=$1
    
	for i in ${@: 2}; do
		accumulator=$( echo "$accumulator + $i" | bc -l )
	done

	echo $accumulator
}

function minfunc {
	smallest=$1
    
	for i in ${@: 2}; do
        	if (( $( echo "$i < $smallest" | bc -l ) )); then
        		smallest=$i
        	fi
	done

	echo $smallest
}

function maxfunc {
	local biggest=$1
    
	for i in ${@: 2}; do
        	if (( $( echo "$i > $biggest" | bc -l ) )); then
        		biggest=$i
        	fi
	done

	echo $biggest
}


case $op in
        P)
		productfunc ${tall[*]}
		;;
        S)
		sumfunc ${tall[*]}
		;;
	m)
		minfunc ${tall[*]}
		;;
	M)
		maxfunc ${tall[*]}
		;;
esac

