

#9-Atividae, filtrar e exibir todos os cpf encontrados.


{
  for( i=1; i<=NF; i++ ) {
    if( $i ~ /[0-9][0-9][0-9].[0-9][0-9][0-9].[0-9][0-9][0-9]-[0-9][0-9]/ ){print $i; }
  }
}



#comando executado, awk -f 9.awk cpf.txt
