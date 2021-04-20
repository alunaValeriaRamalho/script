#!/bin/bash

echo -e "\n 8 - Atividade  Estrutura while e case.\n"

# 2- atividade Exibir  data e  arquivo he criado.
date
cat chave.txt | while read chave; do  echo $chave; sleep 2; done


# 3 - Atividade  explorador de arquivo.
comando=$1
while true; do
    echo  -e "escolha o comando\n"
    echo " f - Exibir arquivo, digite (f)"
    echo " d - Exibir diretorio, digite (d)"
    echo " v - Exibir conteudo, digite (v)"
    echo " cd - Mudar de diretorio, digite (cd)"
    echo " q - SAIR , digite (q) "
    echo -n "Opcao selecionada; "
    read comando
    case $comando in 
             f) echo $(ls -f);;
             d) echo $(ls */ -d);;
             v) echo $(cat arq.txt);;
            cd) echo -e "DIR" $(cd /);;
             q) break;;
             *) echo " Ecolha f, d, v, cd ou q";;
    esac
done

#4 -Atividade executar o ping para cada ips.txt e listar os down.
while read ips; do
  ping  -c 6 $ips &> /dev/null &&
  echo "up" $ips || echo "down" $ips
done < ips.txt 




