FROM ubuntu:16.04

WORKDIR back

RUN apt-get update
RUN apt-get install curl git -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs
RUN git clone https://github.com/docker-hy/backend-example-docker
WORKDIR backend-example-docker
RUN npm install

EXPOSE 8000

# ENV FRONT_URL "http://localhost"
# ENV FRONT_URL "http://localhost:5000"
#RUN FRONT_URL=localhost:5000

#ENTRYPOINT ["FRONT_URL"]
CMD ["npm", "start"]

# Commands used:
#
# $ docker build -t teht1-11 .
# $ docker run --rm -v $(pwd)/logs.txt:/teht1-11/backend-example-docker/logs.txt -dp 8000:8000 teht1-11:latest
