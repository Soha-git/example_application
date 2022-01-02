pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'curl -l http://localhost:5000'
            }
        }
    }
}