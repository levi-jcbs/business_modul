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

    if [ $1 -ne 0 ] && [ $1 -ne 7 ]; then    
	tput cup $1 10
	wert $2 $3
	tput cup $1 30
	wert $2 $4
	echo -n " / "
	wert $2 $5
	tput cup $1 50
	wert $2 $6
	echo -n " / "
	wert $2 $7
	if [ $1 -ne 4 ] && [ $1 -ne 5 ]; then
	    tput cup $1 70
	    wert $2 $8
	    echo -n " / "
	    wert $2 $9
	fi
    else
	tput cup $1 10
	wert $2 $3
	echo -n " / "
	wert $2 $5
	tput cup $1 30
	wert $2 $4
	tput cup $1 50
	wert $2 $6
	tput cup $1 70
	wert $2 $8
    fi
    
}

old=''

while [ true ]; do
    
    bp=$( cat a.pack )
    eternit=$( cat b.pack )
    otto=$( cat c.pack )
    
    pa=$( cat z.pack )
    rheinland=$( cat o.pack )
    
    bank=$( cat d.pack )

    if [ "$bp$eternit$otto$pa$heinland$bank" != "$old" ]; then
	echo -en "\033[47m "
	clear
	sleep 0.1
	echo -en "\033[0m "
	clear
	echo -e "\033[42m      BP:"
	echo -e "\033[43m ETERNIT:"
	echo -e "\033[44m    OTTO:\n"
     echo -e "\033[47;30m      PA:"
	echo -e "\033[46m Rheinl.:\n"
	echo -e "\033[0;1m    BANK:\033[0m"
	 
	write 0 $bp 10000 12000 3000 9000 3000 6000 3000
	write 1 $eternit 60000 16000 8000 12000 4000 8000 2000
	write 2 $otto 25000 94000 10000 66000 15000 40000 2500
	
	write 4 $pa 20000 10000 5000 10000 2000
	write 5 $rheinland 40000 6000 4000 6000 1000
		
	write 7 $bank 50000 15000 40000 10000 40000 5000 40000
    fi

    old="$bp$eternit$otto$pa$heinland$bank"
    
done
