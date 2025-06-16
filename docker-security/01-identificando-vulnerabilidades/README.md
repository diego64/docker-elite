## 📝 Contexto do desafio

A equipe de engenharia da Rota42 iniciou a auditoria de segurança do projeto Kube News. O primeiro passo é analisar as dependências do projeto para identificar possíveis vulnerabilidades que possam comprometer a aplicação.

A equipe de desenvolvimento precisa de um relatório detalhado no formato SARIF (Static Analysis Results Interchange Format), que pode ser integrado a ferramentas de análise de segurança e CI/CD. Esse relatório ajudará os desenvolvedores a entenderem quais pacotes precisam ser atualizados ou corrigidos.

---

## 🏷️ Missão

- [x] Clonar o repositório do Kube News e garantir que todas as dependências estejam instaladas.
- [x] Utilizar o Docker Scout para escanear as dependências do projeto e identificar vulnerabilidades.
- [x] Não analisar a imagem Docker neste momento. O foco deve ser apenas nas vulnerabilidades das dependências da aplicação.
- [x] Gerar um relatório no formato SARIF para que a equipe de desenvolvimento possa analisar os problemas e priorizar correções.
- [x] Salvar o relatório gerado em um arquivo chamado vulnerabilities-report.sarif.

---