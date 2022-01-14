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
            agent{
                docker{ image DOCKER_IMAGE}
                }
            steps {
                sh 'curl -l http://localhost:8080'
            }
}

}
}