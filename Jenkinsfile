pipeline {
    environment{
        DOCKER_IMAGE = "application-python:$BUILD_ID"
    }
    agent any
    stages {
        stage('Build'){
            agent{dockerfile true}
                
            steps{
                sh "python3 --version"
            }    
            }
        }
        // stage('Test') {
        //     steps {
        //         sh 'curl -l http://localhost:5000'
        //     }
}

