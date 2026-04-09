# 🐳 Docker Study Project

Repositório criado para estudar e praticar Docker na prática, utilizando uma aplicação simples em Spring Boot.

O objetivo é entender como containerizar uma aplicação, padronizar ambiente e preparar para cenários reais de desenvolvimento e deploy.

---

## 📌 O que você vai encontrar aqui

* Dockerfile com build multi-stage
* Aplicação Spring Boot simples (`/hello`)
* Integração com banco de dados via Docker Compose
* Uso de variáveis de ambiente (.env)
* Anotações sobre conceitos do Docker

---

## 🧱 Tecnologias utilizadas

* Java (Spring Boot)
* Docker
* Docker Compose

---

## ⚙️ Como rodar o projeto

### 🔹 Opção 1: Docker (modo básico)

```bash
docker build -t spring-app .
docker run -p 8080:8080 spring-app
```

---

### 🔹 Opção 2: Docker Compose (recomendado)

#### 1. Criar arquivo `.env`

```env
MYSQL_ROOT_PASSWORD=1234
MYSQL_DATABASE=testdb
MYSQL_USER=root
MYSQL_PASSWORD=1234
```

---

#### 2. Subir aplicação + banco

```bash
docker-compose up --build
```

---

#### 3. Parar containers

```bash
docker-compose down
```

---

### 🌐 Acessar aplicação

```
http://localhost:8080/hello
```

---

## ⚠️ Observações importantes

* O backend se conecta ao banco usando o nome do serviço (`db`)
* Não utilizar `localhost` para comunicação entre containers
* O Docker Compose cria automaticamente uma rede interna
* O arquivo `.env` é carregado automaticamente

---

## 🧠 Aprendizados

Este projeto cobre os seguintes conceitos:

* Criação de imagens com Dockerfile
* Uso de containers
* Multi-stage build
* Docker Compose
* Comunicação entre containers
* Variáveis de ambiente (.env)

---

## 📚 Anotações

As anotações detalhadas estão disponíveis em:

👉 `DOCKER_NOTES.md`

---


## 📌 Objetivo

Este repositório faz parte do meu processo de aprendizado prático em Docker, com foco em aplicação real e evolução contínua.
