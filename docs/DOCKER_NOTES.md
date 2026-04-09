# 🐳 Docker - Anotações e Conceitos

## 📌 Docker

docker > serviço de virtualização leve

> separa aplicações por container
> utiliza S.O do hospedeiro
> configura ambiente para funcionar da mesma forma em qualquer lugar
> define tudo oq é necessário para rodar a aplicação

---

## 📦 Imagem

imagem > modelo usado para criar os containers

> contém tudo oq é necessário para execução
> é imutável (não muda depois de criada)

---

## 📦 Container

container > unidade que empacota o código e suas dependências

> onde roda a imagem
> instância da imagem
> pode ser iniciado, parado e removido

---

## 📄 Dockerfile

dockerfile > arquivo de instruções para construir a imagem

> onde define linguagem, dependências e como rodar
> funciona como uma "planta" do projeto
> descreve passo a passo como gerar a imagem

---

## 📦 Registro (Registry)

registro > hub que armazena imagens docker

> exemplo: Docker Hub
> permite compartilhar imagens

---

## 🔗 Docker Compose

docker compose > orquestra vários containers

> permite rodar múltiplos serviços com um comando
> usa arquivo docker-compose.yml

---

### 📌 Estrutura básica

services > define os containers da aplicação

image > imagem usada (ex: mysql, nginx)

build > constrói imagem a partir do Dockerfile

ports > mapeia porta da máquina para o container

restart > política de reinício do container

environment > define variáveis de ambiente

networks > define rede entre containers

---

### ⚙️ Comandos Docker Compose

docker-compose up

> sobe os containers

docker-compose up --build

> sobe e builda novamente

docker-compose down

> para e remove containers

docker-compose ps

> listar containers do compose

docker-compose logs

> ver logs dos containers

docker-compose restart

> reiniciar serviços

---

## ⚙️ Comandos Docker

docker ps

> listar containers ativos

docker ps -a

> listar todos containers (inclusive parados)

docker stop {id}

> parar o container

docker start {id}

> iniciar container parado

docker run (nome_imagem)

> cria e roda um novo container

docker build -t (nome_imagem) .

> gerar imagem a partir do Dockerfile

docker images

> listar imagens geradas

docker rm {id}

> remover container

docker rmi {nome_imagem}

> remover imagem

---

## ☁️ Docker Hub

docker login -u (user_name)

> autenticar no docker hub

docker build -t (user_name)/(nome_imagem) .

> criar imagem com tag para envio

docker push (user_name)/(nome_imagem)

> enviar imagem para o hub

docker pull (user_name)/(nome_imagem)

> baixar imagem do hub

docker run (user_name)/(nome_imagem)

> rodar imagem do hub

---

## 🧠 Conceitos importantes

build > processo de criar uma imagem a partir do Dockerfile

run > criar e iniciar um container baseado em uma imagem

port mapping (-p) > conecta porta do container com a máquina
ex: 8080:8080

multi-stage build > usar múltiplas imagens no Dockerfile

> reduz tamanho final da imagem
> separa build e execução

---

## 🚀 Resumo

docker permite empacotar aplicações com todas as dependências
garante que funcione igual em qualquer ambiente
usa imagens para criar containers
dockerfile define como a imagem é criada
docker compose gerencia múltiplos containers
