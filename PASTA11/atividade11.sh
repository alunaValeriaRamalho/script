#!/bin/bash

echo -e " 11- Atividade , comando SED.\n"

#1-Atividade
echo 'remover linhas vazias de um arquivo'
sed '/^$/d' $1

#2-Atividade.

echo 'a)  atividade remover tas as letras de um arquivo'
sed -E '/[a-zA-Z]/d' $1

echo 'b) removendo todos os digitos de um arquivo'
sed 's/[0-9]\+//g' $1

echo 'c) substituir todos o caracteres que nao seja letras ou digitos por <?>'
sed 's/[[:punct:]]*/<?>/g' $1


#3-atividade

echo '3-Atividade, remover todos os numeros do cpf de um arquivo de entrada, alterando seu valor para ***CENSURADO***'
cpf=$1
sed -r 's/([0-9]{3}[,.-]){3}[0-9]{2}/<CPF CENSURADO>/' $cpf


#4-Atividade.

echo -e " lista telefonica;\n"
sed 's/\(..\)\(.\{5\}\)/(\1)\2-/g' $1
