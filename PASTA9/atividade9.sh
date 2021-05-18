#!/bin/bash
echo ' 9 - Ativdade  linha de texto.'

#1-atividade recebe o nome do arquivo e um numero (x) como parametro de linha.

arq=$1
l=$2 
for l in $arq; do  head -$2  $1 | grep -n '. *' | tail  -$3 ; test -e $1 && echo "existe "|| echo "Erro" ; done

 
#2-Atividade usando comando tr ,remover linhas vazia  que possua '\n'.
cat $1 | tr -s '\n' '\n'

#3-Atividade  exibir arquivo parte por parte esperando por um enter

cat -n $1  |  head -3 | tail -3

# 4- Atividade converte o decimal em binario.

read -rp "Digite o ip: " ip

RES=1
 
for octeto in $(tr -s '.' ' ' <<< "${ip}"); do
   bin="$(bc <<< "obase=2; ${octeto}")"
   printf "octeto  #${RES}: %3d em binario %08d\n" "${octeto}" "${bin}"
   ((++RES))
done


# isso he show !! :-)


