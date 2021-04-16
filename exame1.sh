#!/bin/bash 

#1-teste.
echo -e "\n Desistir nunca o caminho he longo, mas a vitoria he certa.\n"

#2-teste
DIR=$1 $2 $3
read -p "Qual he os 3 diretorios que vocer quer,DIR1 DIR2 DIR3:" DIR
ls -la ${DIR}

#3-teste
echo -e "\n data de hoje: "
date +" %d/%m/%y"


#4- teste.


#5- teste
echo 'substituicao de variavel ela vaisubstituir na linha o valor da variavel.Ex;usando o comando" ${y}'
echo  'Substituicao de shell em vez de exibir o caminho na tela ela he executada e deois o resultado he exibido na tela. Ex.: '
echo "hoje eh". $(date).
