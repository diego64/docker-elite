Após a análise de vulnerabilidades no projeto Fake Shop, a equipe de desenvolvimento corrigiu problemas nas dependências da aplicação. Agora, o foco está na imagem Docker utilizada para rodar o serviço.

Para garantir que a aplicação esteja segura e otimizada, será necessário avaliar a imagem atual, identificar melhorias e aplicar boas práticas na construção do Dockerfile. Além disso, a imagem será analisada utilizando o Trivy para verificar vulnerabilidades antes e depois da correção.

A versão atual do Dockerfile usada no projeto é a seguinte:

FROM python:3.11
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]

E o arquivo requirements.txt atualizado, garantindo que todas as dependências estejam corrigidas, é o seguinte:

alembic==1.13.3
blinker==1.8.2
click==8.1.7
Flask==3.0.0
Flask-Migrate==4.0.7
Flask-SQLAlchemy==3.1.0
gitdb==4.0.11
GitPython==3.1.41
greenlet==3.1.1
gunicorn==22.0.0
itsdangerous==2.2.0
Jinja2==3.1.5
Mako==1.3.5
MarkupSafe==3.0.1
packaging==24.1
prometheus_client==0.20.0
prometheus_flask_exporter==0.23.0
psycopg==3.2.3
smmap==5.0.1
SQLAlchemy==2.0.16
typing_extensions==4.12.2
Werkzeug==3.0.6

Agora que as dependências foram corrigidas, a equipe precisa garantir que a imagem Docker esteja otimizada e alinhada com as boas práticas de segurança.



Missão
1 Clonar o repositório do Fake Shop e revisar o Dockerfile atual.
2 Gerar um relatório de vulnerabilidades da imagem atual utilizando o Trivy e salvar no arquivo before-fix-report.sarif.
3 Analisar o Dockerfile com o Hadolint para identificar más práticas e gerar um relatório no arquivo hadolint-report.txt.
4 Refatorar o Dockerfile, garantindo que:
  A imagem seja otimizada e segura.
  O ambiente do contêiner seja configurado adequadamente.
5 Construir a nova imagem Docker corrigida.
6 Gerar um relatório de vulnerabilidades da nova imagem corrigida utilizando o Trivy e salvar no arquivo after-fix-report.sarif.




-> trivy image --scanners vuln --format sarif --output after-fix-report.sarif fake-shop-security:v3
