#!/bin/bash
echo -e "Atividade Aritmetica\n"

echo -e " \nteste1-somando as variaveis 21+y="
x=21
read -p "Digite a variavel y: " y
echo " a soma he:" $((${x}+${y}))

echo -e " \nteste2-a soma de 3 variaves:"
echo "O resutado eh igual:" $(($1+$2+$3))

echo -e " \nteste3-a soma de (a+10)elevado a B-5) he:"
echo "o resultado e igual;" $((($1+10)**$2-5))
a=$1
b=$2


echo -e " \nteste4-de contagem de linhas de um arquivo:"
a=$(wc -l < "$1")
b=$(wc -l < "$2")
c=$(wc -l < "$3")
echo "Resultado da soma de linhas eh:" $((a+b+c))
