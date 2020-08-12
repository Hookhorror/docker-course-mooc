FROM ubuntu:16.04

ENV FRONT_URL "http://localhost:5000"

WORKDIR app

RUN apt-get update && \
    apt-get install curl git -y && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt-get install -y nodejs && \
    git clone https://github.com/docker-hy/backend-example-docker && \
    cd backend-example-docker && \
    npm install && \
    apt-get purge -y --auto-remove curl git && \
    rm -rf /var/lib/apt/lists/*

RUN useradd -m app
RUN chown -R app ./
# RUN chown app /app/backend-example-docker/node_modules/

USER app

WORKDIR backend-example-docker

EXPOSE 8000

# CMD ["npm", "start"]
ENTRYPOINT ["npm"]
CMD ["start"]
