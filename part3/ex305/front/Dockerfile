FROM node:current-alpine3.10

EXPOSE 5000

RUN apk add --no-cache git && \
    git clone https://github.com/docker-hy/frontend-example-docker && \
    cd frontend-example-docker && \
    npm build . && npm install && \
    apk del git
# apk cache clean

WORKDIR ./frontend-example-docker

CMD [ "npm", "start" ]
