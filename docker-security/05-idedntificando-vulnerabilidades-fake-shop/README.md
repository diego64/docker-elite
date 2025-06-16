## 📝 Contexto do desafio

Agora que a auditoria de segurança no projeto Kube News foi realizada, a equipe da Rota42 decidiu aplicar o mesmo processo ao Fake Shop, um e-commerce fictício utilizado para demonstrações e testes de DevOps.

Assim como no primeiro desafio, a primeira etapa da auditoria será analisar as dependências da aplicação para identificar possíveis vulnerabilidades antes de avaliar a imagem Docker. Para isso, será utilizado o Trivy, uma ferramenta amplamente adotada para análise de segurança em projetos e containers.

A equipe de desenvolvimento precisa de um relatório detalhado em formato SARIF, para que as vulnerabilidades encontradas possam ser priorizadas e corrigidas.

---

## 🏷️ Missão

- [x] Clonar o repositório do Fake Shop e garantir que todas as dependências estejam instaladas.
- [x] Utilizar o Trivy para escanear as dependências da aplicação e identificar vulnerabilidades.
- [x] Não analisar a imagem Docker neste momento. O foco deve ser apenas nas vulnerabilidades das dependências da aplicação.
- [x] Gerar um relatório no formato SARIF e salvar o arquivo como vulnerabilities-report.sarif.fake

---

## 🔧 Execução

Gerar a imagem da aplicação

> ```
> docker build -t usuario/repositorio:tag .
> ```

Analise da imagem com Trivy

> ```
> trivy image --timeout 10m --format sarif --output vulnerabilities-report.sarif usuario/repositorio:tag .
> ```

---