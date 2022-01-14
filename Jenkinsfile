pipeline {
    environment{
        DOCKER_IMAGE = "application-python:$BUILD_ID"
    }
    agent any
    stages {
        stage('Syntax test'){
        agent{ docker { image "alpine/flake8:latest" } }
        steps{
            flake8 src
        }
        }
        stage('Build'){
            script{
                docker.build( "ghcr.io/Soha-git/exampel_application:$BUILD_ID")
            }
            
        }    
        //     }
        // }
        // stage('Test') {
        //     steps {
        //         sh 'curl -l http://localhost:5000'
        //     }
}

}