FROM jetbrains/teamcity-agent:2024.07.3-linux-arm64-sudo

# Установка make, mc, aws-cli и docker-compose версии 2
USER root
RUN apt-get update && \
    apt-get install -y make mc curl unzip && \
    # Установка AWS CLI v2
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    sudo ./aws/install && \
    rm -rf awscliv2.zip aws && \
    # Установка docker-compose версии 2
    curl -L https://github.com/docker/compose/releases/download/v2.18.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
