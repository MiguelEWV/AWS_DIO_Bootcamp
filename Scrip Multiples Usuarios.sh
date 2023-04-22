#!/bin/bash
echo "Criando Usuarios, Trabalho AWS DIO BootCamp"

echo "Criando Diretorios"

cd /home/

mkdir -v publico adm ven sec

groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC

echo "Criando Usuarios do grupo ADMINISTRASTIVO"

useradd carlos -c "Carlos ADM" -m -s /bin/bash -p $(openssl passwd -crypt Pass123)
passwd carlos -e
usermod -g GRP_ADM carlos
chown carlos:GRP_ADM /adm/

useradd maria -c "Maria ADM" -m -s /bin/bash -p $(openssl passwd -crypt Pass123)
passwd maria -e
usermod -g GRP_ADM maria

useradd joao -c "Joao ADM" -m -s /bin/bash -p $(openssl passwd -crypt Pass123)
passwd joao -e
usermod -g GRP_ADM joao

chmod 770 /adm/

echo "Criando Usuarios do grupo VENDAS"

useradd debora -c "Debora VEN" -m -s /bin/bash -p $(openssl passwd -crypt Pass123)
passwd debora -e
usermod -g GRP_VEN debora
chown debora:GRP_VEN /ven/

useradd sebastiana -c "Sebastiana VEN" -m -s /bin/bash -p $(openssl passwd -crypt Pass123)
passwd sebastiana -e
usermod -g GRP_VEN sebastiana

useradd roberto -c "Roberto VEN" -m -s /bin/bash -p $(openssl passwd -crypt Pass123)
passwd roberto -e
usermod -g GRP_VEN roberto

echo "Criando Usuarios do grupo SECRETARIADO"

useradd josefina -c "Josefina SEC" -m -s /bin/bash -p $(openssl passwd -crypt Pass123)
passwd josefina -e
usermod -g GRP_SEC josefina
chown josefina:GRP_SEC /sec/

useradd amanda -c "Amanda SEC" -m -s /bin/bash -p $(openssl passwd -crypt Pass123)
passwd amanda -e
usermod -g GRP_SEC amanda

useradd rogerio -c "Rogerio SEC" -m -s /bin/bash -p $(openssl passwd -crypt Pass123)
passwd rogerio -e
usermod -g GRP_SEC rogerio

chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
chmod 777 /publico/