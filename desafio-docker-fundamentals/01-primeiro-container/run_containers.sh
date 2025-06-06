#!/bin/bash

# Baixar a imagem nginx
echo "Baixando a imagem nginx..."
docker pull nginx

# Iniciar um contêiner nginx nomeado 'meu-servidor' em background
echo "Iniciando o container nginx com nome 'meu-servidor'..."
docker run -d --name meu-servidor nginx

# Listar todos os contêineres em execução
echo "Listando todos os contêineres em execução:"
docker ps

# Parar o contêiner 'meu-servidor'
echo "Parando o contêiner 'meu-servidor'..."
docker stop meu-servidor

# Remover o contêiner 'meu-servidor'
echo "Removendo o contêiner 'meu-servidor'..."
docker rm meu-servidor

# Listar todos os contêineres (incluindo os parados)
echo "Listando todos os contêineres (ativos e parados):"
docker ps -a

echo "Script finalizado!"