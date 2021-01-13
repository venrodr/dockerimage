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
            sh "chmod +x ./push.sh" 
            sh "./push.sh"        
            }
        }         
        
    }
}
