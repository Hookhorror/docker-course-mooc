FROM node:current-alpine3.10 as stage1

# EXPOSE 5000

RUN apk add --no-cache git && \
    git clone https://github.com/docker-hy/frontend-example-docker && \
    apk del git && \
    cd frontend-example-docker && \
    npm install && \
    npm run build && \
    rm -r node_modules

# apk cache clean

# WORKDIR ./frontend-example-docker

# CMD ["serve", "-s", "-l", "5000", "dist"]

FROM node:current-alpine3.10

COPY --from=stage1 /frontend-example-docker/dist /app/dist

RUN npm install -g serve

WORKDIR /app

CMD ["serve", "-s", "-l", "5000", "dist"]