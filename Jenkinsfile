pipeline {
    environment{
        DOCKER_IMAGE = "application-python:$BUILD_ID"
        dockerImage = ''
    }
    agent any
    stages {
        stage('Build'){
            steps{
            script{
                dockerImage = docker.Build DOCKER_IMAGE
            }
            }
        }
        stage('Test') {
            steps {
                sh 'curl -l http://localhost:5000'
            }
        }
    }
}