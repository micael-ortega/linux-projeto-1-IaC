#!/bin/bash

echo  "1/3 Criando grupos..."
groupadd GRP_ADM ; groupadd GRP_VEN; groupadd GRP_SEC   
echo "grupos criados"

echo "2/3 Criando diretórios..."
mkdir /publico /adm /ven /sec
chown -v root:GRP_ADM /adm ; chown -v root:GRP_VEN /ven ; chown root:GRP_SEC /sec
chmod -v 770 /adm /ven /sec
chmod -v 777 /publico
echo "Diretórios criado!"

echo "3/3 Adicionando usuários aos grupos"
#Usuários do grupo ADM
useradd carlos -m -c "Carlos" -s /bin/bash -g GRP_ADM -p $(openssl passwd Senha123)
useradd maria -m -c "Maria" -s /bin/bash -g GRP_ADM -p $(openssl passwd Senha123)
useradd joao -m -c "João" -s /bin/bash -g GRP_ADM -p $(openssl passwd Senha123)
#Usuários do grupo VEN
useradd debora -m -c "Débora" -s /bin/bash -g GRP_VEN -p $(openssl passwd Senha123)
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -g GRP_VEN -p $(openssl passwd Senha123)
useradd roberto -m -c "Roberto" -s /bin/bash -g GRP_VEN -p $(openssl passwd Senha123)
#Usuários do grupo SEC
useradd josefina -m -c "Josefina" -s /bin/bash -g GRP_SEC -p $(openssl passwd Senha123)
useradd amanda -m -c "Amanda" -s /bin/bash -g GRP_SEC -p $(openssl passwd Senha123)
useradd rogerio -m -c "Rogério" -s /bin/bash -g GRP_SEC -p $(openssl passwd Senha123)
echo "Usuários criado"
echo "Fim"