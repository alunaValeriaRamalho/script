#!/bin/bash

echo -e "\n7-atividade, Estruturas condicionais  FOR;\n "


#2-atividade;uso do comando export e soma das variaveis;
echo " Digite a variavel , x, y, z;"
echo "testando" $x
echo "variavel" $y
echo "se existe" $z
echo soma=$(($x+$y+$z))


#3-atividade; imprimir os diretorios, arquivos e links da pasta atual.
echo -e "\nDIRS" 
for i in *; do [ -d $i ] && [ ! -h $i ] && echo $i; done
echo -e "\nFILES"
for i in *; do [ -f $i ] && [ ! -h $i ] && echo $i; done
echo -e "\nLINKS"
for i in *; do [ -h $i ]  && echo $i; done


#4-Removendo os arquivos que tem permissao de execucao.
chmod -R -x-X *

echo "----------------------------------------------------------------------"
echo -e " Comandos de test realizados na 2 - atividade \n"

x=10
y=20
z=6
export x
export y
export z
./ativadade7.sh
 Digite a variavel , x, y, z;
testanto 10
variavel 20
se existe 6
soma=36
