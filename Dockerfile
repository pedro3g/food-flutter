# Imagem base
FROM ubuntu:20.04

# Atualizar pacotes e instalar dependências necessárias
RUN apt-get update && apt-get install -y curl git unzip xz-utils zip libglu1-mesa openjdk-8-jdk wget

# Instalar o Flutter SDK
RUN git clone https://github.com/flutter/flutter.git -b stable --depth 1
ENV PATH=$PATH:/flutter/bin

# Instalar dependências do projeto
WORKDIR /app
COPY pubspec.yaml .
RUN flutter pub get

# Buildar a aplicação para Linux
RUN flutter build linux --release

# Configurar o comando de entrada
ENTRYPOINT ["/app/build/linux/x64/release/bundle/food"]
