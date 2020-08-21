FROM ubuntu:16.04 

ENV API_URL "http://localhost:8000"
ENV LC_ALL=C.UTF-8

WORKDIR app

RUN apt-get update && \
    apt-get install curl git -y && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt-get install -y nodejs && \
    git clone https://github.com/docker-hy/frontend-example-docker && \
    cd frontend-example-docker && \
    npm install && \
    npm run build && \
    rm -r node_modules && \
    npm install -g serve && \
    apt-get purge -y --auto-remove curl git && \
    rm -rf /tmp/* && \
    rm -rf /usr/share/doc/* && \
    rm -rf /usr/share/man/* && \
    rm -rf /var/lib/apt/lists/*

WORKDIR frontend-example-docker

EXPOSE 5000

# ENTRYPOINT ["npm"]
CMD ["serve", "-s", "-l", "5000", "dist"]
