#!/bin/bash

tput civis

echo -en "\033[0m "
clear

r=0
while [ $r -lt $COLUMNS ]; do
    tput cup $(( $LINES / 2 )) $r
    echo -en "\033[0;4m \033[0m"
    
    r=$(( $r + 1 ))
done



tput cup $(( $LINES / 2 - 20 )) 0
echo -en "\033[0;1m2"

tput cup $(( $LINES / 2 )) 0
echo -en "\033[0;4;1m1"

tput cup $(( $LINES / 2 + 19 )) 0
echo -en "\033[0;1m-2"

a=20
b=20
c=20
o=20
h=20
z=20
d=20

aQ=0
bQ=0
cQ=0
oQ=0
hQ=0
zQ=0
dQ=0

oa=20
ob=20
oc=20
oo=20
oh=20
oz=20
od=20

first=1
i=3
while true; do

    if [ $i -eq $COLUMNS ]; then
	clear
	
	r=0
	while [ $r -lt $COLUMNS ]; do
	    tput cup $(( $LINES / 2 )) $r
	    echo -en "\033[0;4m \033[0m"
	    
	    r=$(( $r + 1 ))
	done
	
	tput cup $(( $LINES / 2 - 20 )) 0
	echo -en "\033[0;1m2"
	
	tput cup $(( $LINES / 2 )) 0
	echo -en "\033[0;4;1m1"
	
	tput cup $(( $LINES / 2 + 19 )) 0
	echo -en "\033[0;1m-2"
	
	i=3
    fi



    ### FAKTORRECHNUNGEN ###

    echo $a > a.pack
    echo $b > b.pack
    echo $c > c.pack
    echo $o > o.pack
    echo $h > h.pack
    echo $z > z.pack
    echo $d > d.pack
    
    ###       END        ###



    

    # XXXXXX
    # X    X
    # XXXXXX
    # X    X
    # X    X
    
    if [ $oa -eq $(( $LINES / 2 )) ]; then
	addon='4;'
    else
	addon=''
    fi

    if [ $first -eq 0 ]; then
	tput cup $oa $(( $i - 1 ))
	echo -en "\033[0;${addon}1;32m°\033[0m"    
    fi
    
    if [ $(( ( $LINES / 2 ) + 20 - $a )) -eq $(( $LINES / 2 )) ]; then
	addon='4;'
    else
	addon=''
    fi
    
    tput cup $(( ( $LINES / 2 ) + 20 - $a )) $i
    echo -en "\033[0;${addon}1;42m>\033[0m"

    oa=$(( ( $LINES / 2 ) + 20 - $a ))
    
    ran=$(( $RANDOM % 6 ))
    
    if [ $ran -eq 0 ]; then
	aQ=1
    fi

    if [ $ran -eq 1 ]; then
	aQ=-1
    fi

    ran=$(( $RANDOM % 6 ))

    if [ $a -ge 40 ]; then
	if [ $ran -eq 0 ]; then
	    aQ=-1
	else
	    aQ=0
	fi
    elif [ $a -le 5 ]; then
	if [ $ran -eq 0 ]; then
	    aQ=1
	else
	    aQ=0
	fi
    fi

    a=$(( $a + ( $aQ ) ))

    
    # XXXXXX
    # X   X
    # XXXX
    # X   X
    # XXXXXX
    
    if [ $ob -eq $(( $LINES / 2 )) ]; then
	addon='4;'
    else
	addon=''
    fi
    
    if [ $first -eq 0 ]; then
	tput cup $ob $(( $i - 1 ))
	echo -en "\033[0;${addon}1;31m°\033[0m"
    fi
    
    if [ $(( ( $LINES / 2 ) + 20 - $b )) -eq $(( $LINES / 2 )) ]; then
	addon='4;'
    else
	addon=''
    fi
    
    tput cup $(( ( $LINES / 2 ) + 20 - $b )) $i
    echo -en "\033[0;${addon}1;41m>\033[0m"

    ob=$(( ( $LINES / 2 ) + 20 - $b ))

    ran=$(( $RANDOM % 6 ))
    
    if [ $ran -eq 0 ]; then
	bQ=1
    fi

    if [ $ran -eq 1 ]; then
	bQ=-1
    fi

    ran=$(( $RANDOM % 6 ))

    if [ $b -ge 40 ]; then
	if [ $ran -eq 0 ]; then
	    bQ=-1
	else
	    bQ=0
	fi
    elif [ $b -le 5 ]; then
	if [ $ran -eq 0 ]; then
	    bQ=1
	else
	    bQ=0
	fi
    fi
    
    
    b=$(( $b + ( $bQ ) ))

    
    # XXXXXX
    # X
    # X
    # X
    # XXXXXX

    if [ $oc -eq $(( $LINES / 2 )) ]; then
	addon='4;'
    else
	addon=''
    fi
    
    if [ $first -eq 0 ]; then
	tput cup $oc $(( $i - 1 ))
	echo -en "\033[0;${addon}1;34m°\033[0m"
    fi
    
    if [ $(( ( $LINES / 2 ) + 20 - $c )) -eq $(( $LINES / 2 )) ]; then
	addon='4;'
    else
	addon=''
    fi
    
    tput cup $(( ( $LINES / 2 ) + 20 - $c )) $i
    echo -en "\033[0;${addon}1;44m>\033[0m"

    oc=$(( ( $LINES / 2 ) + 20 - $c ))
    
    ran=$(( $RANDOM % 6 ))
    
    if [ $ran -eq 0 ]; then
	cQ=1
    fi

    if [ $ran -eq 1 ]; then
	cQ=-1
    fi

    ran=$(( $RANDOM % 6 ))

    if [ $c -ge 40 ]; then
	if [ $ran -eq 0 ]; then
	    cQ=-1
	else
	    cQ=0
	fi
    elif [ $c -le 5 ]; then
	if [ $ran -eq 0 ]; then
	    cQ=1
	else
	    cQ=0
	fi
    fi
    
    
    c=$(( $c + ( $cQ ) ))


    
    # XXXXXX
    # X    X
    # X    X
    # X    X
    # XXXXXX

    if [ $oo -eq $(( $LINES / 2 )) ]; then
	addon='4;'
    else
	addon=''
    fi
    
    if [ $first -eq 0 ]; then
	tput cup $oo $(( $i - 1 ))
	echo -en "\033[0;${addon}1;36m°\033[0m"
    fi
    
    if [ $(( ( $LINES / 2 ) + 20 - $o )) -eq $(( $LINES / 2 )) ]; then
	addon='4;'
    else
	addon=''
    fi
    
    tput cup $(( ( $LINES / 2 ) + 20 - $o )) $i
    echo -en "\033[0;${addon}1;46m>\033[0m"

    oo=$(( ( $LINES / 2 ) + 20 - $o ))
    
    ran=$(( $RANDOM % 6 ))
    
    if [ $ran -eq 0 ]; then
	oQ=1
    fi

    if [ $ran -eq 1 ]; then
	oQ=-1
    fi

    ran=$(( $RANDOM % 6 ))

    if [ $o -ge 40 ]; then
	if [ $ran -eq 0 ]; then
	    oQ=-1
	else
	    oQ=0
	fi
    elif [ $o -le 5 ]; then
	if [ $ran -eq 0 ]; then
	    oQ=1
	else
	    oQ=0
	fi
    fi
    
    
    o=$(( $o + ( $oQ ) ))



    
    # XXXXXX
    #      X 
    #   XX 
    # X    
    # XXXXXX

    if [ $oz -eq $(( $LINES / 2 )) ]; then
	addon='4;'
    else
	addon=''
    fi
    
    if [ $first -eq 0 ]; then
	tput cup $oz $(( $i - 1 ))
	echo -en "\033[0;${addon}1;37m°\033[0m"
    fi
    
    if [ $(( ( $LINES / 2 ) + 20 - $z )) -eq $(( $LINES / 2 )) ]; then
	addon='4;'
    else
	addon=''
    fi
    
    tput cup $(( ( $LINES / 2 ) + 20 - $z )) $i
    echo -en "\033[0;${addon}1;47m>\033[0m"

    oz=$(( ( $LINES / 2 ) + 20 - $z ))
    
    ran=$(( $RANDOM % 6 ))
    
    if [ $ran -eq 0 ]; then
	zQ=1
    fi

    if [ $ran -eq 1 ]; then
	zQ=-1
    fi

    ran=$(( $RANDOM % 6 ))

    if [ $z -ge 40 ]; then
	if [ $ran -eq 0 ]; then
	    zQ=-1
	else
	    zQ=0
	fi
    elif [ $z -le 5 ]; then
	if [ $ran -eq 0 ]; then
	    zQ=1
	else
	    zQ=0
	fi
    fi
    
    
    z=$(( $z + ( $zQ ) ))


    # XXXXX
    # X    X
    # X    X
    # X    X
    # XXXXX    
    
    nd=$od
    while [ $nd -le $d ] ; do

	if [ $(( ( $LINES / 2 ) + 20 - $nd )) -eq $(( $LINES / 2 )) ]; then
	    addon='4;'
	else
	    addon=''
	fi
	
	tput cup $(( ( $LINES / 2 ) + 20 - $nd )) $i
	echo -en "\033[0;${addon}1;35mo\033[0m"
	
	nd=$(( $nd + 1 ))
    done
    
    nd=$od    
    while [ $nd -ge $d ] ; do

	if [ $(( ( $LINES / 2 ) + 20 - $nd )) -eq $(( $LINES / 2 )) ]; then
	    addon='4;'
	else
	    addon=''
	fi
	    
	tput cup $(( ( $LINES / 2 ) + 20 - $nd )) $i
	echo -en "\033[0;${addon}1;35mo\033[0m"
	
	nd=$(( $nd - 1 ))
    done
    
    od=$d
    
    d=$(( ( $a + $b + $c + $d + $h + $z ) / 6 ))

    if [ $d -lt 20 ]; then
	d=$(( $d - 3 ))
    else
	d=$(( $d + 3 ))
    fi

    if [ $d -gt 40 ]; then
	d=40
    elif [ $d -lt 0 ]; then
	d=0
    fi


    
    r=0
    while [ $r -lt $COLUMNS ]; do
	tput cup $LINES $r
	echo -en "\033[0;1;36m*\033[0m"
	if [ "$1" != "--no-wait" ]; then
	    sleep 0.1
	fi
	r=$(( $r + 1 ))
    done
    r=0
    while [ $r -lt $COLUMNS ]; do
	tput cup $LINES $r
	echo -en "\033[0m \033[0m"
	r=$(( $r + 1 ))
	if [ "$1" != "--no-wait" ]; then
	    sleep 0.1
	fi
    done

    
    first=0
    i=$(( $i + 1 ))
done
