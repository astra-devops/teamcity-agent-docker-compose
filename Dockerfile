FROM jetbrains/teamcity-agent:latest

# Установка docker-compose версии 2
RUN curl -L https://github.com/docker/compose/releases/download/v2.18.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
