#!/bin/bash

echo -e "10 - Atividade  Grep e Regex.\n"

#4- Atividade Validar um email, formato usenome@dominio.

echo 'Informe o E-mail';
read EMAIL
echo $EMAIL | egrep '^([a-zA-Z0-9_-.])+@[0-9a-zA-Z.-]+\.[a-z]{2,3}$' &&  echo -e '\033[01;32m E-mail valido! \033[0m' || echo -e '\033[01;31m Nao he valido esse E-mail. \033[0m'
