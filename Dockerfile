# Установка make и docker-compose версии 2
USER root
RUN apt-get update && \
    apt-get install -y make mc && \
    curl -L https://github.com/docker/compose/releases/download/v2.18.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
