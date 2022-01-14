pipeline {
    environment{
        DOCKER_IMAGE = "application-python:$BUILD_ID"
    }
    agent any

    stages {
        stage('Syntax test'){
        agent{ docker{image{"github/super-linter:latest"} }
        steps{
            hadolint Dockerfile
            pylint src
            flake8 src
        }
        }
        }
        stage('Build'){

            }
        }
        // stage('Test') {
        //     steps {
        //         sh 'curl -l http://localhost:5000'
        //     }
}

