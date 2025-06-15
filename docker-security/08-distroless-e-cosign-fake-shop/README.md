Após a análise e otimização da imagem Docker do Fake Shop, a equipe identificou a necessidade de reduzir ainda mais a superfície de ataque da aplicação. Para isso, foi decidido que a aplicação será empacotada utilizando imagens Distroless da Chainguard, garantindo que apenas as bibliotecas essenciais estejam presentes na imagem final.

Além disso, para aumentar a confiabilidade e rastreabilidade da imagem, será necessário utilizar o Cosign para assinar digitalmente a imagem antes de publicá-la. Isso garantirá que qualquer alteração ou comprometimento na imagem possa ser detectado, seguindo as melhores práticas de segurança na cadeia de suprimentos de software.

Missao

1 Refatorar o Dockerfile, garantindo que:
  A nova imagem utilize Distroless da Chainguard.
  O ambiente seja o mais leve e seguro possível.
2 Construir a nova imagem Docker Distroless e nomeá-la como fake-shop-distroless.
3 Publicar a imagem no Docker Hub.
4 Assinar a imagem com o Cosign, garantindo a verificação da integridade da imagem.
5 Salvar a assinatura gerada no arquivo cosign-signature.txt.
6 Criar um README.md contendo:
  O nome e a URL da imagem no Docker Hub.
  Instruções sobre como verificar a assinatura da imagem.



gerar o par de chaves -> cosign generate-key-pair
assinar a imagem ->  cosign sign --key cosign.key docker.io/usario/repositorio:tag
verificar a assinatura ->  cosign verify --key cosign.pub --key cosign.key docker.io/usario/repositorio:tag