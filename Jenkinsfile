pipeline {
    environment{
        DOCKER_IMAGE = "application-python:$BUILD_ID"
    }
    agent {dockerfile true}
    stages {
        stage('Build'){
            // agent{
            //     docker{
            //         image 'ubuntu:20.04'
            //     }
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

