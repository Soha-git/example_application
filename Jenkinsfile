pipeline {
    environment{
        DOCKER_IMAGE = "application-python:$BUILD_ID"
    }
    agent{
        docker{
            image 'ubuntu:20.04'

    stages {
        stage('Build'){
            echo "build" 
            }
            }
        }
        // stage('Test') {
        //     steps {
        //         sh 'curl -l http://localhost:5000'
        //     }
    }
}
