## 📝 Contexto do desafio

Com a adoção crescente de containers, a Rota42 precisa separar seus ambientes de desenvolvimento e homologação, mas tudo ainda está no mesmo arquivo Compose. Isso gera conflitos de configuração e risco de erro ao subir para produção.

---

## 📌 Missão

Alterar o arquivo compose.yaml do desafio anterior e suportar múltiplos arquivos de ambiente.

---

## 💥 Desafio

- [x] Alterar o arquivo compose para suportar o uso de variáveis de ambiente.
- [x] Criar dois arquivos .env, um para cada ambiente: .dev.env (ambiente de desenvolvimento). | .homolog.env(ambiente de homologação).

---

## 🏗️ Execução

<h4>Desenvolvimento</h4>

> ```console
> $ docker compose --env-file .dev.env up -d
> ```

<h4>Hologação</h4>

> ```console
> $ docker compose --env-file .homolog.env up -d
> ````

---
