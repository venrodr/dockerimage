pipeline {

    agent any
    
    stages {
        
        stage("Build Image") {
        
            steps {
            echo "Docker Build"
            sh "docker build -t testimage:latest ."
            }
        
        }
        
        stage("Test Image") {
        
            steps {
            echo "Docker Run"
            }
        
        } 
    }
}
