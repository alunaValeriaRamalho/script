#!/bin/bash
echo "4 - Atividade Comandos de Redirecionamentos"
    1  history -w
    2  echo " obase=16
(11^3+31/4)+13*3
10+10
1+2+3+4+5+6+7+8 " | bc
    3  bc <<< " obase=16
(11^3+31/4)+13*3
10+10
1+2+3+4+5+6+7+8 " | bc
    4  vim a.txt
    5  bc < a.txt
    6  vim a.txt
    7  > b.txt
    8  > w.txt
    9  > c.txt
   10  ls
   11  ls abc.txt
   12  ls abc.txt 2> erro.log
   13  cat erro.log
   14  ls
   15  cat erro.log
   16  ls
   17  ls > correto.txt
   18  cat correto.txt
   19  ls abc > correto.txt
   20  cat correto.txt
   21  ls
   22  rm correto.txt erro.log
   23  ls > ok.txt 2> falha.txt 
   24  ls abc.txt > ok.txt 2> falha.txt
   25  ls abc.txt &> ambos.txt
   26  cat ambos.txt
   27  ls &> ambos.txt
   28  cat ambos.txt
   29  ls &> /dev/null
   30  echo " Criando um diretorio e removendo os arquivos"
   31  mkdir Atual
   32  cd Atual
   33  cd ..
   34  mv a.txt Atual
   35  mv b.txt Atual
   36  cd Atual
   37  ls
   38  cd ..
   39  mv w.txt Atual
   40  mv c.txt Atual
   41  mv r.txt Atual
   42  cd Atual
   43  ls
   44  rm *
   45  ls
   46  cd ..
   47  history > atividade4.sh
