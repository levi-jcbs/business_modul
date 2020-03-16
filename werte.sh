#!/bin/bash
tput civis
echo -en "\033[0m "
clear

function wert(){
    n=$2
    if [ "$n" == "" ]; then
	n=0
    fi
    
    echo -n $(( ( ( $1 * $n ) - 0 ) / 20 ))
}

function write(){
    ### POS, GROUND, BUY$, k1, d1, k2, d2, k3, d3
    
    tput cup $1 10
    wert $2 $3
    tput cup $1 20
    wert $2 $4
    echo -n " / "
    wert $2 $5
    tput cup $1 40
    wert $2 $6
    echo -n " / "
    wert $2 $7
    tput cup $1 60
    wert $2 $8
    echo -n " / "
    wert $2 $9
    
}

old=''

while [ true ]; do
    

    menpower=$( cat z.pack )
    bp=$( cat a.pack )
    eternit=$( cat h.pack )

    kaufland=$( cat o.pack )
    otto=$( cat c.pack )
    rewe=$( cat b.pack )
    
    bank=$( cat d.pack )

    if [ "$menpower$bp$eternit$kaufland$otto$rewe$bank" != "$old" ]; then
	echo -en "\033[47m "
	clear
	sleep 0.1
	echo -en "\033[0m "
	clear
	echo -e "\033[47;30mMENPOWER:"
	echo -e "\033[42m      BP:"
	echo -e "\033[43m ETERNIT:\n"
	echo -e "\033[46mKAUFLAND:"
	echo -e "\033[44m    OTTO:"
	echo -e "\033[41m    REWE:\n"
	echo -e "\033[0;1m    BANK:\033[0m"
	 
	write 0 $menpower 40000 2000 1000 3000 1500 6000 2500
	write 1 $bp 40000 2000 1000 3000 1500 6000 2500
	write 2 $eternit 40000 2000 1000 3000 1500 6000 2500
	
	write 4 $kaufland 40000 2000 1000 3000 1500 6000 2500
	write 5 $otto 40000 2000 1000 3000 1500 6000 2500
	write 6 $rewe 40000 2000 1000 3000 1500 6000 2500
	
	write 8 $bank 40000 2000 1000 3000 1500 6000 2500
    fi

    old="$menpower$bp$eternit$kaufland$otto$rewe$bank"
    
done
