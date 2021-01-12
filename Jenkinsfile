pipeline {

    agent any
    
    stages {
        
        stage("Build Image") {
        
            steps {
            echo "Docker Build"
            sh "chmod +x ./build.sh"    
            sh "./build.sh"
            }
        
        }
        
         stage("Install agent") {
        
            steps {
            echo "Deploy Agent"
            sh "chmod +x ./deploy.sh"    
            sh "./deploy.sh"
            sh "sleep 20"    
            }
        
        }      
        
        stage("Run Image") {
        
            steps {
            echo "Docker Run"
            sh "chmod +x ./container.sh"
            sh "./container.sh"    
            }
        
        } 
    }
}
