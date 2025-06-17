## 📝 Contexto do desafio

A Rota42 está desenvolvendo uma solução para processamento de vídeos, onde os vídeos precisam ser convertidos para diferentes formatos antes de serem disponibilizados para os usuários. Atualmente, a equipe está tentando containerizar o processo utilizando Docker, mas estão enfrentando problemas ao definir como a imagem deve ser executada.

Os desenvolvedores estão confusos sobre quando utilizar ENTRYPOINT e CMD, pois precisam permitir que os usuários passem parâmetros dinâmicos ao rodar o contêiner. Você precisa criar uma imagem Docker otimizada para rodar o FFmpeg e garantir que o contêiner aceite argumentos corretamente. O script de execução já foi criado pela equipe de desenvolvimento e ele é executado da seguinte forma:

> ```console
> $ ./convert.sh <arquivo de entrada> <formato de saída>
> ```

---

## 📌 Missão

1 - Criar um Dockerfile que:
- [x] Instale todas as dependências do projeto
- [x] Copie o script convert.sh para dentro da imagem.
- [x] Configure corretamente o contêiner utilizando ENTRYPOINT e CMD, garantindo que seja possível:
  - Definir um comportamento padrão ao rodar o contêiner sem argumentos.
  - Passar comandos dinâmicos ao rodar o contêiner.

2 - Criar um arquivo compose.yaml que:
- [x] Construa a imagem Docker.
- [x] Permita rodar o contêiner com diferentes parâmetros para testar ENTRYPOINT e CMD.

---

## 🧵 Diferença entre ENTRYPOINT e CMD

- ENTRYPOINT fixa o algo a ser executado de maneira fixa 
- CMD para os argumentos padrão (que podem ser sobrescritos na hora do docker run)

---