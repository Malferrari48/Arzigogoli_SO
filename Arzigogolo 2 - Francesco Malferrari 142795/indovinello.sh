declare -i tentativi=0
declare -i random=$(( 1 + RANDOM % 100))
declare -i numero

while [ true ];
do
	tentativi=$(($tentativi+1))
	echo -e “Inserisci un numero per provare ad indovinare\t”
	read numero
	if [ $numero -lt $random ]; then
		echo “Il numero immesso è minore”
	elif [ $numero -gt $random ]; then
		echo “Il numero immesso è maggiore”
	else
		echo “Complimenti! Hai indovinato il numero in $tentativi tentativi.”
		exit 0;
	fi
done