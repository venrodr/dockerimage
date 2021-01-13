FROM ubuntu:latest
WORKDIR /tmp/my-image-dir
RUN apt update -qq
RUN apt-get -qq install curl -y
RUN curl -LO http://www.eicar.org/download/eicar.com
RUN echo "changelogs" > test.txt
ENTRYPOINT /bin/bash
