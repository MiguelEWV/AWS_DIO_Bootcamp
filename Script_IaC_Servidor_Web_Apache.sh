#!/bin/bash

echo "Actualizando o Servidor..."
apt-get updater
apt-get upgrade -y
apt-get install apache2 unzip -y

echo "Baixando e copiando os arquivos de aplicacao..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/ -y