## 📝 Contexto do desafio

A Rota42 está melhorando sua solução de processamento de vídeos e recentemente migrou o código do conversor de vídeos de Shell Script para Golang, buscando desempenho e flexibilidade.

Agora, o próximo passo é containerizar essa aplicação de forma eficiente. Atualmente, o time de desenvolvimento criou um Dockerfile simples, mas a imagem gerada está muito grande, pois inclui pacotes de desenvolvimento que não são necessários em produção.

Seu desafio é refatorar a criação da imagem utilizando Multistage Build, garantindo que a imagem final seja leve e eficiente.

---

## 🏷️ Missão

1 - Criar um Dockerfile otimizado utilizando Multistage Build, garantindo que
- [x] A imagem seja a menor possível e garantindo todas as funcionalidades
- [x] O contêiner aceite parâmetros dinâmicos para conversão de vídeos.

2 - Criar um arquivo compose.yaml que:
- [x] Construa a imagem otimizando o processo de build.
- [x] Permita rodar o contêiner de forma simples.

---