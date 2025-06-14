Agora que a auditoria de segurança no projeto Kube News foi realizada, a equipe da Rota42 decidiu aplicar o mesmo processo ao Fake Shop, um e-commerce fictício utilizado para demonstrações e testes de DevOps.

Assim como no primeiro desafio, a primeira etapa da auditoria será analisar as dependências da aplicação para identificar possíveis vulnerabilidades antes de avaliar a imagem Docker. Para isso, será utilizado o Trivy, uma ferramenta amplamente adotada para análise de segurança em projetos e containers.

A equipe de desenvolvimento precisa de um relatório detalhado em formato SARIF, para que as vulnerabilidades encontradas possam ser priorizadas e corrigidas.

Missão

1 Clonar o repositório do Fake Shop e garantir que todas as dependências estejam instaladas.
2 Utilizar o Trivy para escanear as dependências da aplicação e identificar vulnerabilidades.
3 Não analisar a imagem Docker neste momento. O foco deve ser apenas nas vulnerabilidades das dependências da aplicação.
4 Gerar um relatório no formato SARIF e salvar o arquivo como vulnerabilities-report.sarif.fake



-> docker build -t diego64/fake-shop-security:v1 .
-> trivy image --timeout 10m --format sarif --output vulnerabilities-report.sarif diego64/fake-shop-security:v1w