#!/bin/bash
# 13-Atividade função, linha de comando e dig as opções.

function Remover_letras () {
   echo $( tr -d  [A-Z] < $1 )
}
function Remover_digitos () {
   echo $( sed 's/[0-9]\+//g' $1 )
}
function Substituir_caracteres () {
   echo $( awk '{print "<?>",substr($1,1,2)}' < $1 )
}
   echo " Digite o arquivo na linha de comando"
   echo " Digite a opção desejada ; (1); (2); (3)"
   echo " 1 - Remover_letras maiusculas do arquivo,(1);"
   echo " 2 - Remover_digitos de um arquivo,(2)"
   echo " 3 - Substituir_caracteres de um arquivo por 
   <?> , (3)"
   echo " 4 - sair "
read -p " digite a opção; " opção
case $opção in 
   1) echo $( tr -d [A-Z] < $1 ) ;;
   2) echo $( sed 's/[0-9]\+//g' $1 ) ;;
   3) echo $( awk '{print "<?>",substr($1,1,2)}' < $1 ) ;;
   4) exit ;;
   *) echo " Opção inexistente " ;;
   
esac
