FROM node:current-alpine3.10

# ENV FRONT_URL "http://localhost:5000"

# WORKDIR app
EXPOSE 8000

# RUN git clone https://github.com/docker-hy/backend-example-docker && \
#     cd backend-example-docker && \
#     npm install && \
#     apt-get purge -y --auto-remove curl git && \
#     rm -rf /var/lib/apt/lists/*

RUN apk add --no-cache git && \
    git clone https://github.com/docker-hy/backend-example-docker && \
    cd backend-example-docker && \
    npm install && \
    apk del git


WORKDIR backend-example-docker


CMD ["npm", "start"]
# ENTRYPOINT ["npm"]
# CMD ["start"]
