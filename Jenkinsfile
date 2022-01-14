pipeline {
    environment{
        DOCKER_IMAGE = "application-python:$BUILD_ID"
    }
    agent any
    stages {
        stage("Build"){
            steps{
                script{
                    docker.build( "ghcr.io/soha-git/exampel_application:${env.BUILD_ID}")
            }
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