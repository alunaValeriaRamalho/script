#5-atividade, ips que acessaram maquina via ssh, contagem de quantos ips distintos eram interno ( nao roteaveis) e quantos  eram roteaveis.

BEGIN {
    FS="."
    acc_int=0;
    acc_ext=0;
}

{
  if( $1 == "192" && $2 == "168" ) #192.168
  {
    if( A[$1"."$2"."$3"."$4 ] == 0 ) { acc_int ++; A[$1"."$2"."$3"."$4 ]=1; }
  }
  else if( $1 == "10" ) #10
  {
    if( A[$1"."$2"."$3"."$4 ] == 0 ) { acc_int ++; A[$1"."$2"."$3"."$4 ]=1; }
  }
  else if ( $1 == "172" && $2 >= 16 && $2 <= 31 ) #172.16
  {
    if ( A[$1"."$2"."$3"."$4 ] == 0 ) { acc_int ++; A[$1"."$2"."$3"."$4 ]=1; }
  }
  else
  {
    if ( A[$1"."$2"."$3"."$4 ] == 0 ) { acc_ext ++; A[$1"."$2"."$3"."$4 ]=1; }
  
  }
}

END {
 print  acc_int " " acc_ext;
}


#comando executado, cat ips.txt | tr ' ' '\n' | awk -f 5.awk


