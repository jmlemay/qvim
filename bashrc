##! Deprecated. This is stuff is better in a bin dir. Keep for posterity.

#
# Scans current subtree and vims a file.
#
# @param $1 File name.
# @param $2 Optional parameter -- in case of multiple hits, index of the one you want to open.
#
function svi() {
	sfn vi $1 $2
}

#
# Scans current subtree and cats a file.
#
# @param $1 File name.
# @param $2 Optional parameter -- in case of multiple hits, index of the one you want to open.
#
function scat() {
	sfn cat $1 $2
}

#
# Scans current subtree and performs given function on a file.
#
# @param $1	Function.
# @param $2	File name.
# @param $3 Optional parameter -- in case of multiple hits, index of the one you want to use.
#
function sfn() {
	files=`find . -name $2` # Find all matches to file name
	array=($files) # Array-ify
	n=${#array[@]}

	if [ $n == 1 ]; then
		$1 $files
	else
		if [ $# == 3 ]; then
			$1 ${array[$3]}
		else
			echo "$n files found:"
			echo "${files[0]}"
		fi
	fi
}

#
# Changes the console colour.
#
# @param $1	Colour (default to black if no colour is found).
#			Use "list" to list all available colours
#
function colo() {
	case $1 in
	red)
		c="#630000"
		;;
	blue)
		c="#000063"
		;;
	green)
		c="#006300"
		;;
	olive)
		c="#313100"
		;;
	purple)
		c="#310031"
		;;
	turquoise)
		c="#003131"
		;;
	list)
		echo "black red blue green olive purple turquoise"
		return
		;;
	*)
		c="#000000"
		;;
	esac

	echo -ne "\e]11;$c\a"
}
