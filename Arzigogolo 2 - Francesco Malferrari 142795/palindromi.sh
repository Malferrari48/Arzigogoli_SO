palindroma() {
	if [ ${#1} -le 1 ]; then
		return 0;
	elif [ ${1:0:1} != ${1: -1} ]; then
		return 1;
	fi
	rimanente=${1:1}
	palindroma ${rimanente%?}
}
	
palindroma $(echo $1)