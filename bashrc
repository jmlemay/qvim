#
# Scans current subtree and vims a file.
#
# @param $1 File name.
# @param $2 Optional parameter -- in case of multiple hits, index of the one you want to open.
#
function svi() {
	files=`find . -name $1` # Find all matches to file name
	array=($files) # Array-ify
	n=${#array[@]}

	if [ $n == 1 ]; then
		vi $files
	else
		if [ $# == 2 ]; then
			vi ${array[$2]}
		else
			echo "$n files found:"
			echo "${files[0]}"
		fi
	fi
}

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
	*)
		c="#000000"
		;;
	esac

	echo -ne "\e]11;$c\a"
}
