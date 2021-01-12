FROM ubuntu 
RUN apt-get update 
RUN apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
CMD [“echo”,”Image created”] 
