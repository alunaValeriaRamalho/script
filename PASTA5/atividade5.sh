#!/bin/bash

echo -e "\n Atividade Condicionais.\n"

#teste1.imprimir o num inteiro menor;"
echo " entre com dois numeros inteiros"
read -p "digite n1;" n1
read -p "digite n2;" n2
test ${n1} -lt ${n2} &&  echo "n1 e menor que n2: "$n1 || echo " n2 e menor que n1: "$n2

#teste2 argumento de linha./exame4.sh arq1 arq2 arq3.
echo -e "\n Imprimir se  Existe ou nao existe o arquivo."
test -e $1 && echo "sim, Existe o arq " $1 || echo " nao, Existe o arq " $1
test -e $2 && echo "sim, Existe o arq " $2 || echo " nao, Existe o arq " $2
test -e $3 && echo "sim, Existe o arq " $2 || echo " nao, Existe o arq " $2

#teste3.  
echo -e "\nPedir  para o usuario o digitar os arquivo e imprimir o maior."
read -p "Digite o arq1: " arq1
read -p "Digite o arq2: " arq2
arq1=$(wc -l < "$arq1")
arq2=$(wc -l < "$arq2")
echo " quant arq1; " $arq1
echo " quant arq2; " $arq2
test $arq1 -gt $arq2 && echo " arq1 he maior: " $arq1 || echo " arq2 he maior: " $arq2

#teste3.1 linha de comando./exame4.sh w.txt r.txt
echo -e "\n Digitar os arquivos e impimir as linhas do maior arq."
arq1=$1
arq2=$2
arq1=$(wc -l < "$1")
arq2=$(wc -l < "$2")
echo "quant de linha arq1: " ${arq1}
echo "quant de linha  arq2; " ${arq2}
test ${arq1} -gt ${arq2} && echo " arq1 he maior:" $1 || echo " arq2 he maior : " $2

#teste4. argumento de linha, diretorios que tem mais arquivos;
ls -A | wc -l
 
#teste5.imprimir  arq nao existe ou possua menos de 5 linhas.(existe erro!!)
arq=$1
a=5
arq=$(wc -l < "$1") 
test  ${arq} -lt ${a} && echo " Arquivo he menor que 5 linha; " ${arq}
test -e $1 && echo " Arquivo  Existe: " $1 || echo  " Arquivo NAO EXISTE; " $1

#teste6. 
echo -e "\nscript com casas decimais e imprimir o menor dos dois;"
read -p " digite o n1: " n1
read -p " digite o n2: " n2
r=$(echo " $n1 > $n2" | bc) 
test $r -eq "0"  &&  echo " $n1 he menor que  $n2" ||  echo "$n2 he menor que $n1"
