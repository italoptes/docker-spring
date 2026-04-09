#Etapa 1: Build, compilar o projeto
#Importo uma imagem do mavem e jdk para compilar o projeto
FROM maven:3.9.6-eclipse-temurin-21 AS build
#Defino a pasta de trabalho dentro do container
WORKDIR /app

#Copio o pom.xml para a pasta do container(/app)
COPY pom.xml /app
RUN mvn dependency:go-offline  #Baixo as dependências do projeto

#Copio o codigo fonte(source) para o container
COPY src /app/src

#Compila o projeto e gera o .jar
#Para pular os teste o comando é -DskipTests, só caso queira pular para ser mais rápida a execução
RUN  mvn clean install -DskipTests

#Etapa 2: Rodar a aplicação
#Importo a imagem para executar
FROM eclipse-temurin:21-jdk

#Defino a pasta de trabalho
WORKDIR /app

#Copio o .jar gerado no build
COPY --from=build /app/target/demo-0.0.1-SNAPSHOT.jar /app/app.jar

#Para conseguir acessar é preciso mapear na hora de fazer o docker run --> (-p 8080:8080)
EXPOSE 8080

#Comandos necessários para iniciar a aplicação
CMD ["java", "-jar", "app.jar"]

#docker build -t spring-app .