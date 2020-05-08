FROM ubuntu:16.04

WORKDIR teht1-11
RUN apt-get update
RUN apt-get install curl git -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs
RUN git clone https://github.com/docker-hy/backend-example-docker
WORKDIR backend-example-docker
RUN npm install

EXPOSE 8000

ENTRYPOINT ["npm"]
CMD ["start"]

# Commands used:
#
# $ docker build -t teht1-11 .
# $ docker run --rm -v $(pwd)/logs.txt:/teht1-11/backend-example-docker/logs.txt -dp 8000:8000 teht1-11:latest
