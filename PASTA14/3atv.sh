#!/bin/bash
#3-Atividade, menor nome.
nomes=( "Bryssa Sylvi Bracchi"  "Ana Thereza Vasques Boliveira" "dehbora kaynahra Patricia  da Silva" )
v=( 1 4 8)
x=0;
while [ $x != ${#nomes[@]} ]
do
   if [ $x == 0 ]
   then
      echo " A pessoa de nome nemor ${nomes[$x]}" "."
      echo " Ela representa "${v[$x]}" unico digito. "
   fi 
   let "x = x +1"
done
