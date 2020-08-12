FROM ubuntu:16.04

# ENV FRONT_URL "http://localhost:5000"

COPY dockerbuild.sh .

# RUN apt-get update && \
#     apt-get install curl git -y && \
#     curl -sL https://deb.nodesource.com/setup_10.x | bash && \
#     apt-get install -y nodejs && \
#     git clone https://github.com/docker-hy/backend-example-docker && \
#     cd backend-example-docker && \
#     npm install && \
#     apt-get purge -y --auto-remove curl git && \
#     rm -rf /var/lib/apt/lists/*
# RUN apt-get remove docker docker-engine docker.io containerd runc
RUN apt-get update
RUN apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
# RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
RUN apt-get update
RUN apt-get install -y docker-ce docker-ce-cli containerd.io

# runs script that builds the image
# RUN sh  Hookhorror docker-course-ex302
RUN chmod +x dockerbuild.sh

CMD ["./dockerbuild.sh"]
