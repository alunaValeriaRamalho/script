#!/bin/bash
declare -A chaves
NEXT_IDX=1
while read line; do
    if [ "x${chaves[$line]}" = "x"]; then
        chaves[$line]=$NEXT_IDX
        NEXT_IDX=$(( NEXT_IDX + 1 ))
        echo "$line:${chaves[$line]}"
    fi
done


# executando ./2atv.sh << EOL
#>bash
#>is
#>tought
#>as
#>bash
#>is
#>pretty
#EOL
#Saida do comando
#bash:1
#is:2
#tought:3
#as:4
#pretty:5

