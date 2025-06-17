## 📝 Contexto do desafio

Após a análise de vulnerabilidades no projeto Kube News, a equipe de desenvolvimento realizou as atualizações necessárias para corrigir problemas nas dependências da aplicação. Agora, o foco da auditoria de segurança está na imagem Docker utilizada para rodar o serviço.

Para garantir que a aplicação atenda aos requisitos de segurança, é necessário avaliar a imagem atual, identificar possíveis melhorias e implementar as devidas correções. O primeiro passo será gerar um relatório detalhado da imagem antes das alterações, revisar a configuração do Dockerfile e, em seguida, implementar otimizações.

A atual versão do Dockerfile usada no projeto é a seguinte:

> ```
> FROM node:23.9.0
> WORKDIR /app
> COPY package*.json .
> RUN npm install
> COPY . .
> EXPOSE 8080
> CMD ["node", "server.js"]
> ```

E o arquivo package.json atualizado, com as correções nas dependências, é o seguinte:

> ```
> {
>    "name": "kube-news",
>    "version": "1.0.0",
>    "description": "",
>    "main": "server.js",
>    "scripts": {
>      "test": "echo Error: no test specified && exit 1",
>      "start": "node server.js"
>    },
>    "author": "",
>    "license": "ISC",
>    "dependencies": {
>      "body-parser": "^1.20.3",
>      "ejs": "^3.1.10",
>      "express": "^4.21.2",
>      "express-prom-bundle": "6.4.1",
>      "pg": "8.7.3",
>      "pg-hstore": "2.3.4",
>      "prom-client": "14.0.1",
>      "sequelize": "^6.37.5"
>    }
>  }
> ```

Agora que as dependências foram corrigidas, a equipe precisa garantir que a imagem Docker também esteja otimizada e alinhada com os padrões de segurança.

---

## 💥 Missão

- [x] Clonar o repositório do Kube News e revisar o Dockerfile atual.
- [x] Gerar um relatório de vulnerabilidades da imagem com o Dockerfile atual utilizando o Docker Scout e salvar no arquivo before-fix-report.sarif.
- [x] Analisar o Dockerfile com o Hadolint para identificar más práticas e gerar um relatório no arquivo hadolint-report.txt.
- [x] Refatorar o Dockerfile, garantindo que:
- [x] A imagem seja otimizada e segura.
- [x] O ambiente do contêiner seja configurado adequadamente.
- [x] Construir a nova imagem Docker corrigida.
- [x] Gerar um relatório de vulnerabilidades da nova imagem corrigida e salvar no arquivo after-fix-report.sarif.

---