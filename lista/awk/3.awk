# 3- atividade awk, lista de todos os comandos , saida nao pode ser repetido.

NF >= 2 {
 A [ $2 ] = 1;

}

END {
  for(a in A){
   print a;
  }
}


#comando executado; awk -f 3.awk int.txt
