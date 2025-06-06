## 📝 Contexto do desafio

Agora que os desenvolvedores começaram a usar containers, um novo problema surgiu: os logs desaparecem toda vez que o container é reiniciado. O time de observabilidade está preocupado, pois não consegue monitorar os acessos ao sistema.

---

## 🏷️ Missão

Criar um volume para armazenar os logs do Nginx de forma persistente.

---

## 📦️ Desafio

Crie um script nginx_volume_container.sh que:

- [x] Criar um volume Docker chamado nginx_logs.
- [x] Executar um contêiner nginx, montando o volume nginx_logs no dirétorio /var/log/nginx do container e expondo a página web na porta 8080 da máquina local.
- [x] Gerar logs acessando a página hospedada no nginx executando localmente o comando curl http://localhost:8080.
- [x] Parar e remover o contêiner.
- [x] Criar um novo contêiner e validar que os logs antigos ainda existem.

## 💬 Execução

> ```console
> $ chmod +x nginx_volume_container.sh
> ```

> ```console
> $ ./nginx_volume_container.sh
> ```

---