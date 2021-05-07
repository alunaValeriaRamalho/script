#1/bin/bash

echo -e "10 - Atividade grep Regex.\n"

echo -e " Digite a Senha de 4 ate 8 caracteres; pelo menos uma letra minuscula\n pelo menos uma letra Maiuscula e Um Numero."
read SENHA
echo $SENHA | egrep '^([a-zA-Z]{4,7}[0-9]{1})$' && echo -e '\033[01;32m Senha Valida! \033[0m' || echo -e '\033[01;31m Senha Invalida! \033[0m'
