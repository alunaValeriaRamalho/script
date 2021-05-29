#!/bin/bash
function maior {
  awk -v RS='[[:space:]]+' '$1 > nmaior {nmaior=$1} !nmenor || nmenor > $1 {nmenor=$1}
  END {print "Maior = " nmaior}' $1
  
}
function menor {
  awk -v RS='[[:space:]]+' '$1 > nmaior {nmaior=$1} !nmenor || nmenor > $1 {nmenor=$1}
  END {print "Menor = " nmenor}' $1

}

echo
read -p "Digite o arq: " arq
echo

nmaior=$( maior $arq )
nmenor=$( menor $arq )

echo "$nmaior"
echo "$nmenor"
