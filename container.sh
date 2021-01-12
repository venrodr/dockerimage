docker run -dt --name testcontainer testimage:latest /bin/bash"
docker container ls
docker exec -it testcontainer ls
docker kill testcontainer
docker rm testcontainer
