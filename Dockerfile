FROM ubuntu:latest
WORKDIR /tmp/my-image-dir
RUN apt update -qq
RUN apt-get -qq install curl -y
RUN curl -LO http://www.eicar.org/download/eicar.com
ENTRYPOINT /bin/bash
