{
  acc = 0;

  for ( i=0; i<=NF; i++ )
  {
    if ( $i ~ /[0-9]+/ ) acc = acc+$i;
  }

acc = acc/3.0

if ( acc >= 70 )
  ap++;
else
  rp++;

  if ( acc < 10 )
    m0++;
  else
    if ( acc < 20 )
      m1++;
    else
      if ( acc < 30 )
        m2++;
      else
        if ( acc < 40 )
          m3++;
        else
          if ( acc < 50 )
            m4++;
          else
            if ( acc < 60 )
              m5++;
            else
              if ( acc < 70 )
                m6++;
              else
                if ( acc < 80 )
                  m7++;
                else
                  if ( acc < 90)
                    m8++;
                  else
                    if ( acc < 100 )
                      m9++;
                    else
                      if ( acc = 100 )
                        m10++;
}

END {
 print "Aprovados: " ap
 print "Reprovados: " rp
 print " "
 print "Média (0 a 10): " m0
 print "Média (10 a 19): " m1
 print "Média (20 a 29): " m2
 print "Média (30 a 39): " m3
 print "Média (40 a 49): " m4
 print "Média (50 a 59): " m5
 print "Média (60 a 69): " m6
 print "Média (70 a 79): " m7
 print "Média (80 a 80): " m8
 print "Média (90 a 99): " m9
 print "Média (100): " m10
 print " "
}
