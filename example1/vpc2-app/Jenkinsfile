pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                checkout scm
            }
        }
        stage('compile') {
            agent {
                docker {
                    image 'node:14'
                }
            }
            steps {
                sh 'npm install'
            }
        }
        stage('docker image') {
            when {
                beforeAgent true
                expression { BRANCH_NAME ==~ /(main|master|develop|release)/ }
            }
            steps {
                script {
                    def image = docker.build('test')
                }
            }
        }
    }
}
