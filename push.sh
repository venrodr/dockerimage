aws configure set region us-east-2 
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 143631420864.dkr.ecr.us-east-2.amazonaws.com
docker push 143631420864.dkr.ecr.us-east-2.amazonaws.com/venrodr:latest  
