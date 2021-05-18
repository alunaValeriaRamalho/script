
#7- atividade, resumo de numeros de aprovados e numeros de reprovados.

{
  acc = 0;
  for( i=1; i<=NF; i++ )
  {
     if( $i ~ /[0 - 9]+/ ) acc = acc+$i;
  }

  if ( acc/3.0 >= 70 )
     ap++;
  else
     rp++;
}

END {
 print ap " " rp
}






#comando executado, awk -f 7.awk notas.awk
