pipeline {
    environment{
        DOCKER_IMAGE = "ghcr.io/soha-git/exampel_application:${env.BUILD_ID}"
    }
    agent any
    stages {
        stage("Build"){
            steps{
                script{
                    docker.build(DOCKER_IMAGE)
            }
            }
            
        }    
        stage('Test') {
            steps {
                script{
                    docker.image(DOCKER_IMAGE).withRun('-p 8000:8080'){
                        sh 'curl http://localhost:8000'
                    }
                }
            }
}

}
}