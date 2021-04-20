#!/bin/bash
echo -e "\n 8 - Atividade, help_2.sh \n"
while true
do
    echo -e "\n Qual operador de test voce quer Pesquisar ? \n"
    echo '1) operador Logico'
    echo '2) operador Aritmetico'
    echo '3) operador String'
    echo '4) operador Variavel'
    echo '5) operador Arquivo'
    echo '6) operador Extended'
    echo '7) SAIR'
    read -p 'Escolha uma das opcoes(1 ate 7):' opcao
    
    case $opcao in
            "1")
            echo ' Operadores Logicos;
            ! nao logico (NOT)
            -a he logico (AND)
            o ou logico (OR)  
            Associacoes entre Condicoes 
            &&; AND logico
            ||; OR logico
            ex; test -d /home/user && echo 'usuario exite' ';;

            "2")
            echo 'Teste de condicao Aritmeticos (()) 
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
            ex; ((25 % 2 == 0)) && echo "par" ';; 
             
            "3")
            echo ' O comando test permite a verificacao 
            de condicao relativa string;
            ==  he igua
            != he diferente
            -n he nao nula (nao vazia)
            -z he nula (vazia)
            Comparacao entre string  usando shel_script
            <=: menor ou igual a (lexicografico)
            =>; maior ou igual a (lexicografico) 
            ex; x="umdoistres"; test-z "$x" ';;
             
            "4")
            echo ' test condicao e feita baseada na variavel $? 
            que representa o codigo de retorno do ultimo comando 
            executado. Caso valor seja 0, o ultimo comando obteve sucesso.
            sao  algumas variaveis de ambiente do bash o
            $ que he numero de processo em execucao.
            home; mostra o nome do diretorio home do usuario,  e outros.
            he possivel criar novas variaveis, excluir variaveis existentes 
            ou apenas alterar o conteudo de uma variavel de ambiente.
            ex; usando o comando export; TESTE=10;export TESTE. ' ;;
            
            "5")
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
            ex; test -d/home ';;
              
            "6")
            echo 'Extended, as expressoes 
            [ ] he um sinonimo para test, e a [[ ]] 
            he a palavra chave.
            [[...]] he mais flexivel que [...] . pode -se 
            evitar erros de logicas no script. ex.; os operadores
            &&, ||, < e > funcionan dentro do [[...]], mas nao em [...].
            outro ex; if [ -f $foo ] && [ -f $bar ] && [ -f $bar2 ]; ok
            if [ -f $foo && -f $bar && -f $bar2 ] ; erro
            if [[ -f $foo && -f $bar && -f $bar2 ]];ok.';;
            
            "7")
            break;;
 
              *) echo ' Opcao Invalida';;           

    esac       
done


