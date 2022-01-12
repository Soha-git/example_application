pipeline {
    environment{
        DOCKER_IMAGE = "application-python:$BUILD_ID"
    }
    agent any
    node {
        checkout scm

        def customImage = docker.build("application-python:${env.BUILD_ID}")

    customImage.inside {
        sh 'curl http://localhost:8080/'
    }
}
    // stages {
    //     stage('Build'){
    //         agent{dockerfile true}
                
    //         steps{
    //             sh "python3 --version"
    //         }    
    //         }
    //     }
        // stage('Test') {
        //     steps {
        //         sh 'curl -l http://localhost:5000'
        //     }
}

