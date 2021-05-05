#!/bin/bash

echo -e " 10- atividade grep Regex.\n"

#Comando de argumento de linha.

echo -e "a) Listar apenas os diretorios\n"
ls -lhaF | grep ^d

echo -e "b) Listar apenas os arquivos executaveis\n"
ls -l | grep '^-..x'

echo -e "c) Listar apenas os scripts shell.\n"
ls -lhaF | grep ^-

echo -e "d) Listar apenas os links simbolicos.\n"
ls -lhaF | grep ^l

echo -e "e) Listar os arquivos com tamanhos de 100 bytes.\n"
du -bsh *

echo -e "2-remover linhas vazias de um arquivo ,linhas que possui '\n'.\n"

read arq
echo  "digite o arquivo" | egrep -v "^(\r?\n)?$" $arq
