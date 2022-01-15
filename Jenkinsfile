pipeline {
    environment{
        DOCKER_IMAGE = "ghcr.io/soha-git/exampel_application:${env.BUILD_ID}"
    }
    agent any
    stages {
        stage("Syntax"){
            agent {
                docker{ 
                    image 'python:3.9' 
                    args '-u root' }
                }
            steps{
                    sh 'pip3 install -r ./src/requirements-test.txt --upgrade pip'
                    sh 'flake8 src'
                    sh 'isort --check --diff src'
                    sh 'pylint src'
            }
            post{
                success{
                    echo "Test passed successfully"
                }
                failure{
                    echo "Ops! Failed test"
                }
            }
        }
        stage("Build"){
            steps{
                script{
                    docker.build(DOCKER_IMAGE)
            }
            }
            post{
                failure{
                    echo "Ops! build fail"
                }
            }
            
        }    
        stage('Test') {
            steps {
                script{
                    docker.image(DOCKER_IMAGE).withRun('-p 8000:8080'){
                        sh 'sleep 10'
                        sh 'curl http://localhost:8000/'
                    }
                }
            }
}
        stage("Push docker image in registry"){
            steps{
                script{
                    docker.withRegistry('https://ghcr.io', 'github-registry-token') {
                    def myImage = docker.build(DOCKER_IMAGE)
                    myImage.push()
                }
            }

}
}
}




}