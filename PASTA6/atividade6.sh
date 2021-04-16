#!/bin/bash

echo -e "Atividade Lacos de Repeticao\n"
#1-Atividade
echo -e "Imprimir em linha de comando os numeros pares e comparar entre o A he B; \n"
for x in $(seq $1 $2 | grep -E '[0-9]*[2468]$'); do
   for y in $(seq $1 $2 | grep -E '[0-9]*[2468]$'); do
      echo " Num par A $x ;  num par B $y;"
   done
done


#2-atividade;
echo -e "Pedir ao usuario dois numeros somar e exibir  na tela;\n "
a=$1
b=$2
read -p " digite os dois numeros na sequencia com espaco; " a b
for i in 'ls'; do
soma=$(($a+$b))
done
echo " A soma dos numeros he; $soma"


#4-Atividade;
echo -e "linha de comando, imprimir os arquivos se existe ou nao\n"
for x in $*; do
    cat $x &> /dev/null && echo "Arquivo TRUE:" $x || echo "Arquivo FALSE:" $x
done

#ATIVIDADE 3 e 5 se encontra no outro arquivo.
