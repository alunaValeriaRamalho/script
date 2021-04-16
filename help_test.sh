#!/bin/bash
echo -e "\n 7 - Atividade, help_test.sh \n"

for arg in ${*}; do echo $arg 
    if [[ "$arg" =  logico ]] ; then
       echo ' Operadores Logicos;
              ! nao logico (NOT)
              -a he logico (AND)
              o ou logico (OR)  
              Associacoes entre Condicoes 
              &&; AND logico
              ||; OR logico
              ex; test -d /home/user && echo 'usuario exite' '

       echo -e "\n Sua pesquisa foi realizada com Sucesso!\n"

    elif [[ "$arg" = aritmetico ]] ; then
       echo 'Teste de condicao aritmeticos (()) 
             e principais operadores sao;
             + - * /: aritmeticos  basicos
             **; potenciacao
             %; modulo(resto)
             += -= *= /=  %=; aritmetica e atribuicao(como em C )
             << >>; deslocamento de bits
             <<= >>=; deslocamento e atribuicao
             & |; AND e OR  binarios
             &= |=; AND e OR binario com atribuicao
             !; NOT binario (Adiciobnando condicao podem 
             ser nega dousando  uma exclamacao !)
             ^; XOr binario
             Os conectores permite o test de
             condicao com numeros inteiros;
             && ||; AND e OR logicos 
             Test de condicao ao numero inteiro;
             -eq; igual a
             -ne; diferente de 
             -gt; maior que
             -ge; maior ou igual a
             -lt; menor que
             -le; menor ou igual a 
             -a; AND binario (bit a bit) ser conectado por -a
             ( um AND, equivale ao &&)
             -o; OR binario(bit a bit) e adicinando varias 
             condicoes ode ser conectado -0 equivalente a || 
             ex; ((25 % 2 == 0)) && echo "par" ' 

       echo -e "\n Sua pesquisa foi realizada com sucesso!\n"

    elif [[ "$arg" = string ]]; then
       echo ' O comando test permite a verificacao 
             de condicao relativa string;
             ==  he igua
             != he diferente
             -n he nao nula (nao vazia)
             -z he nula (vazia)
             Comparacao entre string  usando shel_script
             <=: menor ou igual a (lexicografico)
             =>; maior ou igual a (lexicografico) 
             ex; x="umdoistres"; test-z "$x" '

       echo  -e "\nSua pesquisa foi realizada com Sucesso!\n"

    elif [[ "$arg" = variavel ]]; then
       echo ' test condicao e feita baseada na variavel $? 
              que representa o codigo de retorno do ultimo comando 
              executado. Caso valor seja 0, o ultimo comando obteve sucesso.
              sao  algumas variaveis de ambiente do bash o
              $ que he numero de processo em execucao.
              home; mostra o nome do diretorio home do usuario,  e outros.
              he possivel criar novas variaveis, excluir variaveis existentes 
              ou apenas alterar o conteudo de uma variavel de ambiente.
              ex; usando o comando export; TESTE=10;export TESTE. ' 

       echo -e "\n Sua pesquisa foi realizada com Sucesso!\n" 

    elif [[ "$arg" = arquivo ]]; then
       echo ' Teste em  Arquivos
            verifica propriedade da entrada no sistema de arquivo.
            os principais  testes sao;
            -b ; he um dispositivo de bloco
            -c ; he um dispositivo de caracteres
            -d ; he um diretorio
            -e ; O arquivo existe
            -f ; he um arquivo  normal
            -g ; O bit SGID esta ativado
            -G ; O grupo do arquivo e o do usuario atua
            -k ; O stick - bit esta ativado
            -L ; O arquivo e o um link simbolico
            -0 ; O dono do arquivo e o usuario atual
            -p ; O arquivo tem permissao de leitura
            -s ; O tamanho do arquivo e maior que zero
            -S ; O arquivo e um socket
            -t ; O descritor de arquivo N e um terminal
            -u ; O bit SUID esta ativado
            -w ; O arquivo tem permissao de escrita
            -x ; O arquivo tem permissao de execucao
            -nt ; O arquivo e mais recente (newerthan)
            -ot ; O arquivo e mais antigo (Olderthan)
            -ef ; O arquivo e o mesmo(link)
             ex; test -d/home '
  
        echo -e " \nSua pesquisa foi realizada com Sucesso!\n"
fi
done


