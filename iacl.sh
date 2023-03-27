#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -c "Maria Priscila" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -c "Joao Martines" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -c "Debora Freitas" -m -s /bin/bash -p $(openssl passwd Senha123 ) -G GRP_VEN
useradd sebastiana -c "Sabastiana Gomes" -m -s /bin/bash -p $(openssl passwd Senha123 ) -G GRP_VEN
useradd roberto -c "Roberto Gil" -m -s /bin/bash -p $(openssl passwd Senha123 ) -G GRP_VEN

useradd josefina -c "Josefina Lucas" -m -s /bin/bash -p $(openssl passwd Senha123 ) -G GRP_SEC
useradd amanda -c "Amana Ferro" -m -s /bin/bash -p $(openssl passwd Senha123 ) -G GRP_SEC
useradd rogerio -c "Rogerio Santos" -m -s /bin/bash -p $(openssl passwd Senha123 ) -G GRP_SEC

echo "Esapecificando permissões dos diretóriso..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado..."
