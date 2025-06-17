## 📝 Contexto do desafio

A Rota42 possui uma página institucional e atualmente, essa página é hospedada em um servidor e precisa agora ser criado uma imagem Docker para depois migrar para um cluster Kubernetes. A página é uma simples página estática e deve ser executada em uma imagem base com NGINX.

---

## 📌 Missão

1 - Criar um Dockerfile que:
- [x] Copie o conteúdo da página institucional para a imagem.
- [x] Crie a imagem de forma que seja a de menor tamanho possível

2 - Adicionar um arquivo docker compose que:
- [x] Execute um container com a imagem mapeando a porta 8080 da máquina local
- [x] Tenha a possibilidade de fazer o build da imagem com o comando docker compose build

---

## 🏗️ Execução

> ```
> $ docker compose up -d
> ```

---