FROM honto/java:8u102
MAINTAINER tsukasa.tamaru<tsukasa.tamaru@2dfacto.co.jp>

RUN apk add --update curl && \
    curl --create-dirs -o /usr/local/bin/embulk -L "http://dl.embulk.org/embulk-latest.jar" && \
    chmod +x /usr/local/bin/embulk && \
    mkdir /etc/embulk
VOLUME /etc/embulk
ADD ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh