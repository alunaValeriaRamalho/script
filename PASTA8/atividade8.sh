#!/bin/bash

echo -e "\n 8 - Atividade  Estrutura while e case.\n"

# 2- atividade Exibir  data e  arquivo he criado.
while [[ ! -f /tamp/chave.txt ]]; do
  date "+F/ %T"
  echo " criando o arquivo"
  sleep 2 
done
echo " Arquivo  encontrado, chave.txt"

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
while read -r ips; do
  ping  -c5 "${ips}" &> /dev/null &&
  echo "up" $ips || echo "down" $ips
done < ips.txt 




