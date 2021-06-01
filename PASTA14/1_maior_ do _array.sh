#!/bin/bash
# 1- Atividade, maior_array 
function maior_array () {
   total=${#num[@]}
   
   for (( i=0; i<"$total"; i++ )); do
     if [[ "${num[i]}" -ge "$maior" ]]; then
       maior=${num[i]}
     fi
   done
   
   echo "$maior"
}

echo -e "\nDigite os números , dando espaços; "
read -ra num 
nmaior=$( maior_array ${num[@]} )
echo -e "\n O maior é; $nmaior\n"
