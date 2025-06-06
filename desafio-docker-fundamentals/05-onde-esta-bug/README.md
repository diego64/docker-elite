## 📝 Contexto do desafio

Depois que os microsserviços começaram a rodar em containers, os desenvolvedores começaram a relatar problemas: "A aplicação está com erro, mas não sabemos por quê!". Sem logs estruturados e sem acesso fácil ao container, o time de suporte está perdido.

---

## 🏷️ Missão

Criar um ambiente completo com PostgreSQL, e uma ferramenta de administração de banco de dados.

---

## 📦️ Desafio

- [x] Analisar o Docker Compose da aplicação e resolver o problema.
- [x] Listar os logs.

---

## 📌 Arquivo para ser analisado

> ```console
> services:
>  postgre:
>    image: postgres:13.16
>   restart: always
>    environment:
>      POSTGRES_USER: ecommerce
>      POSTGRES_DB: fakeshop
>      POSTGRES_PASSWORD: pg1234
>    ports:
>      - "5432:5432"
>   volumes:
>      - postgre_data:/var/lib/postgresql/data
>
>  ecommerce:
>    image: fabricioveronez/fake-shop
>    restart: always
>    environment:
>      DB_HOST: postgre
>      DB_USER: fakeshop
>      DB_PASSWORD: Pg1234
>      DB_NAME: ecommerce
>      DB_PORT: "5432"
>     FLASK_APP: index.py
>    ports:
>      - "5000:5000"
>    depends_on:
>      - postgre
>
> volumes:
>  postgre_data:
> ```

---