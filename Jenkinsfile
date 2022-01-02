pipeline {
    environment{
        DOCKER_IMAGE = "application_py:$(env.BUID_ID)"
    }
    agent any
    stages {
        stage('Build'){
            steps{
                dockerImage = docker.Build DOCKER_IMAGE
            }
        }
        stage('Test') {
            steps {
                sh 'curl -l http://localhost:5000'
            }
        }
    }
}