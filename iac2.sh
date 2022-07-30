#!/bin/bash

echo "Atualizando o servidor... -_- "

apt-get update && upgrade -y

echo "Servidor atualizado com sucesso :) "

echo "Instalando o servidor web Apache..."

apt install apache2 -y

echo "Apache instalado com êxito."

echo "Instalando descompactador de arquivos(unzip)... "

apt install unzip -y

echo "Descompactador de arquivos obteve êxito na instalação."

echo "Baixando arquivos da aplicação..."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Arquivos baixados com sucesso."

echo "Descompactando arquivos da aplicação..."

unzip main.zip

echo "Arquivos descompactados!"

echo "Copiando arquivos da aplicação para o diretório padrão do apache... (/var/www/html)"

cd linux-site-dio-main

cp -R * /var/www/html/

echo "Arquivos da aplicação copiados com sucesso!"

echo "*Parabéns a aplicação está pronta para uso*"


