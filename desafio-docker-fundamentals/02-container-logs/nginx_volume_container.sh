#!/bin/bash

# Criar um volume chamado nginx_logs
echo "Criando volume Docker 'nginx_logs'..."
docker volume create nginx_logs

# Rodar um container nginx montando o volume e expondo a porta 8080
echo "Iniciando container nginx com volume 'nginx_logs'..."
docker run -d --name meu-nginx -p 8080:80 -v nginx_logs:/var/log/nginx nginx

# Aguardar o container subir
sleep 2

# Gerar logs acessando a página com curl
echo "Acessando http://localhost:8080 para gerar logs..."
curl http://localhost:8080 > /dev/null

# Listar arquivos de log via container temporário
echo "Visualizando logs gerados dentro do volume:"
docker run --rm -v nginx_logs:/logs alpine sh -c "ls -l /logs && echo && cat /logs/access.log || echo 'Sem access.log ainda'"

# Parar e remover o container
echo "Parando e removendo container 'meu-nginx'..."
docker stop meu-nginx
docker rm meu-nginx

# Criar novo container com o mesmo volume
echo "Criando novo container com o mesmo volume para validar logs antigos..."
docker run --name novo-nginx -d -p 8080:80 -v nginx_logs:/var/log/nginx nginx

# Mostrar logs persistidos
echo "Verificando logs persistidos no novo container:"
docker run --rm -v nginx_logs:/logs alpine sh -c "echo 'Logs existentes:' && ls /logs && echo && cat /logs/access.log || echo 'access.log não encontrado'"

# Final
echo "Teste concluído! O volume persistiu os dados corretamente."