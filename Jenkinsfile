pipeline {
    environment{
        DOCKER_IMAGE = "application-python:$BUILD_ID"
    }
    agent any
    stages {
        stage('Build'){
                node {
                    checkout scm

                    def customImage = docker.build("application-python:${env.BUILD_ID}")

                    customImage.inside {
                        sh 'curl http://localhost:8080/'
                    }
                }  
            }
        }
        // stage('Test') {
        //     steps {
        //         sh 'curl -l http://localhost:5000'
        //     }
}

