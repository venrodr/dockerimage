pipeline {

    agent any
    
    stages {
        
        stage("Build Image") {
        
            steps {
            echo "Docker Build"
            sh('build.sh')
            }
        
        }
        
        stage("Test Image") {
        
            steps {
            echo "Docker Run"
            }
        
        } 
    }
}
