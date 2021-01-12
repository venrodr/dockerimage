pipeline {

    agent any
    
    stages {
        
         stage("Install Agent") {
        
            steps {
            echo "Install DSA"
            sh "chmod +x ./deploy.sh"    
            sh "./deploy.sh"
            sh "sleep 60"    
            }
        
        }
        
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
            sh "sleep 60"  
            }
            
        stage("Delete DSA") {
        
            steps {
            echo "Deleting Agent"
            sh "dpkg -r ds-agent"
            }            
        
        } 
    }
}
