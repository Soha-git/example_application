pipeline {
    environment{
        DOCKER_IMAGE = "ghcr.io/soha-git/example_application:${env.BUILD_ID}"
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
                    echo "Ops! build failed"
                }
            }
            
        }    
        stage('Test') {
            steps {
                script{
                    docker.image(DOCKER_IMAGE).withRun('-p 8000:8080'){
                        sh 'sleep 5'
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
        stage("Staging deployment"){
            agent{
                label "staging"
            }
            steps{
                script{
                    docker.withRegistry('https://ghcr.io', 'github-registry-token') {
                    sh "docker pull ${DOCKER_IMAGE}"
                    sh "docker rm --force service"
                    sh "docker run -d -p 8080:8080 --name service ${DOCKER_IMAGE}"
                    }
                }
            }
        }    
        stage("Staging Test"){
            agent{
                label "staging"
            }
            steps{
                sh 'curl http://localhost:8080/'
            }
        }
    }




}