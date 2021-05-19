#!/bin/bash

#2- atividade,rankin meninos e meninas.
echo
read -p "Digite o arquivo: " arq
echo
awk '{print $1" "$2}' < $arq > meninos.txt
awk '{print $3" "$4}' < $arq > meninas.txt


#4- Atividade , quantos downloads efetuados pelos usuarios no utimo mes.
echo 
read -p "Digite o arq; " arq
echo 
awk '{sum [$1] += $3} END {for (i in sum) print i, sum [i]}' $arq



#6- atividade,notas dos alunos aprovados maaior ou igual a 70.
echo
read -p " Digt o arq; " arq
echo
awk -v p=70 '{for (i=NF-3; i<=NF; ++i) if ($i < p) next} 1' $arq


#atividade-8 , outro arquivo.

# 10- atividade, 
echo
read -p "Digite o Arquivo:" arq
echo 
echo "$(awk '!a{ printf "%s", $1; for( i=2; i<=NF;i++) {printf("%c", $i)} printf "\n"; a=1}/^$/{a=0}' $arq)"
