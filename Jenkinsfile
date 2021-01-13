pipeline {

    agent any
     environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')
    }  
    stages {
        
        stage("Build Image") {
        
            steps {
            echo "Docker Build"
            sh "chmod +x ./build.sh"    
            sh "./build.sh"
            }
        
        }
        
        stage("Run Image") {
        
            steps {
            echo "Docker Run"
            sh "chmod +x ./container.sh"
            sh "./container.sh"   
            }
        }    

        stage("Push Image") {
        
            steps {
            echo "Push Image to ECR"
            sh "aws configure set region us-east-2"   
            sh "aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 143631420864.dkr.ecr.us-east-2.amazonaws.com"  
            sh "docker push 143631420864.dkr.ecr.us-east-2.amazonaws.com/venrodr:latest"    
            }
        }         
        
    }
}
