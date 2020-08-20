FROM node:current-alpine3.10

EXPOSE 5000

RUN apk add --no-cache git && \
    git clone https://github.com/docker-hy/frontend-example-docker && \
    apk del git && \
    cd frontend-example-docker && \
    npm install && \
    npm run build && \
    rm -r node_modules && \
    npm install -g serve
# apk cache clean

WORKDIR ./frontend-example-docker

CMD ["serve", "-s", "-l", "5000", "dist"]
