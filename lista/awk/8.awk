

# 8- atividade,notas e medias.


BEGIN {
    acc1=0
    acc2=0
    acc3=0
    
}

{
    print $0
    acc1 = acc1 + $1
    acc2 = acc2 + $2
    acc3 = acc3 + $3
    
}

END {
    print "---------------------------"
    print acc1/NR" "acc2/NR" "acc3/NR;

}
