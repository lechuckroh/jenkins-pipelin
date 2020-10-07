pipeline {
    agent {
        label: 'docker' 
    }
    stages {
        stage('checkout') {
            steps {
                checkout scm
            }
        }
        stage('compile') {
            steps {
                sh 'echo compile...'
            }
        }
        stage('docker image') {
            steps {
                sh 'echo build docker image...'
            }
        }
    }
}
