# Stage 2: Construção da imagem raiz
FROM golang:1.21-alpine AS builder
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o converter converter.go

# Stage 2: Construção da imagem final minimalista
FROM scratch
WORKDIR /app
COPY --from=builder /app/converter .
ENTRYPOINT ["./converter"]