#Testes de atividades


# 1- atividade, imprimir apenas o nome do arquivo, seguido  do nome do usuario dono e do grupo dono.

ls -l | awk 'NF != 2 {print $9" "$3" "$4}'

#saida
#3.awk so so
#atividade12.txt so so
#int.txt so so 
