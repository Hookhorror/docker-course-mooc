# From youtube-dl example

# FROM curlimages/curl:7.70.0 as stage1 

FROM alpine:latest as stage1

ENV LC_ALL=C.UTF-8

RUN apk add --no-cache curl && \
    curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl


FROM python:3-alpine

ENV LC_ALL=C.UTF-8


COPY --from=stage1 /usr/local/bin/youtube-dl /app/youtube-dl

WORKDIR /app/data

RUN chmod a+x /app/youtube-dl && \
    adduser -h /app -D user && \
    chown -R user /app/
# mkdir data


USER user

# VOLUME app/data ./

ENTRYPOINT ["/app/youtube-dl"]

# FROM ubuntu:latest as stage1

# ENV LC_ALL=C.UTF-8 

# RUN apt-get update && apt-get install -y \ 
#     curl python ca-certificates && \ 
#     curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
# chmod a+x /usr/local/bin/youtube-dl && \ 
# apt-get purge -y --auto-remove curl && \ 
# rm -rf /var/lib/apt/lists/*

# RUN apk add --no-cache --virtual .installed-packages ca-certificates && \
# RUN apk add --no-cache --virtual .installed-packages python3 ca-certificates && \
# RUN apk add --no-cache python3 ca-certificates && \
# curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
# chmod a+x /usr/local/bin/youtube-dl && \
# apk del .installed-packages
# apk del python ca-certificates

# RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
#     chmod a+x /usr/local/bin/youtube-dl && \


# FROM alpine:latest

# ENV LC_ALL=C.UTF-8 

# COPY --from=stage1 /usr/local/bin/youtube-dl /app/youtube-dl
# # COPY --from=stage1 /usr/bin/python /usr/local/bin/python
# # COPY --from=stage1 

# # WORKDIR /app

# RUN apk add --no-cache python3
# RUN chmod a+x /app/youtube-dl
# RUN adduser -D user
# RUN chown -R user /app/

# USER user

# ENTRYPOINT ["/app/youtube-dl"]
