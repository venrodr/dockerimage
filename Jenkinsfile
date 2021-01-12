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
        
        stage("Run Image") {
        
            steps {
            echo "Docker Run"
            sh "chmod +x ./container.sh"
            sh "./container.sh"   
            }
        }    

    }
}
