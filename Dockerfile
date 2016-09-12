FROM openjdk:8-jdk-alpine
MAINTAINER tsukasa.tamaru<tsukasa.tamaru@2dfacto.co.jp>

RUN apk add --update curl && \
    curl --create-dirs -o /usr/local/bin/embulk -L "http://dl.embulk.org/embulk-latest.jar" && \
    chmod +x /usr/local/bin/embulk
