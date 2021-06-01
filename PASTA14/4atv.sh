#!/bin/bash
# 4-atividade , Abreviar cada nome da lista.
echo slice------------------------
b='Ana Tereza Vasques Boliveira'
echo ${b:0:3} ${b:4:1} ${b:11:1} ${b:19:9}
c='Brissa Syvia Bracchi'
echo ${c:0:6} ${c:7:1} ${c:13:7}
d='Dhebora Kaynahra Patricia da Silva'
echo ${d:0:7} ${d:8:1} ${d:17:1} ${d:26:2} ${d:28:6}
e='Ysabelle Aciole Lhima Santos de Oliveirah'
echo ${e:0:8} ${e:9:1} ${e:16:1} ${e:22:1} ${e:29:2} ${e:32:9}
f='Marylih Rodriguez Fenlixis'
echo ${f:0:7} ${f:8:1} ${f:18:8}




#execução ./4atv.sh
slice------------------------
Ana T V Boliveira
Brissa S Bracchi
Dhebora K P da Silva
Ysabelle A L S de Oliveirah
Marylih R Fenlixis
