## 📝 Contexto do desafio

A equipe de desenvolvimento da Rota42 está trabalhando na padronização do processo de desenvolvimento das suas aplicações. Então, eles estão criando boilerplates de projetos. Mas como a equipe tem pouca experiencia em Docker, a construção da imagem não está com bom desempenho e o processo de build está muito lento.

---

## 🏷️ Missão
- [x] Refatorar o Dockerfile, aplicando boas práticas.
- [x] Adicionar um arquivo de compose para facilitar a execução da aplicação e o build e push da imagem.

---

## 💬 Execução

> ```console
> $ docker compose up -d
> ```

> ```console
> $ docker compose build -t usuario/repositorio/tag 
> ```

> ```console
> $ docker push usuario/repositório:tag
> ```

---