    1  history -w
    2  echo "3-Exibindo o nome e numeros de linhas de cada arquivo"
    3  touch {A..C}
    4  ls
    5  for i in *; do echo -e "$i\n$i" > $i; done
    6  cat *
    7  cat A
    8  wc -l * 
    9  wc -l * >> atividade6.atv.sh
   10  echo " Exibindo os arquivos em ordem decrescente."
   11  cat  atividade6.1.sh
   12  cat  atividade6.1.sh | sort -nr
   13  echo "5-Usando a ferramenta md5 e imprimir o arquivo sucesso ou falha"  
   14  md5sum atividade6.sh
   15  echo $?
   16  md5sum g.txt
   17  echo $?
   18  ls
   19  history > atividade6.atv.sh
