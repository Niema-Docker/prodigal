# Minimal Docker image for Prodigal using Alpine base
FROM alpine:latest

# install Prodigal
RUN apk update && \
    apk add --no-cache bash gcc make musl-dev zlib-dev && \
    wget -qO- "https://github.com/hyattpd/Prodigal/archive/refs/tags/v2.6.3.tar.gz" | tar -zx && \
    cd Prodigal-* && \
    make && \
    make install && \
    cd .. && \
    rm -rf Prodigal-*
