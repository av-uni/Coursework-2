pipeline {
    agent any
    environment {
        DOCKER_IMAGE = "avuni/cw2-server:1.0"
    }
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/av-uni/Coursework-2.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t ${DOCKER_IMAGE} .'
                }
            }
        }
        stage('Push to DockerHub') {
            steps {
                script {
                    docker.withRegistry('', 'docker-hub-credentials') {
                        sh 'docker push ${DOCKER_IMAGE}'
                    }
                }
            }
        }
        stage('Deploy Container') {
            steps {
                script {
                    sh 'docker run -d -p 8080:8080 ${DOCKER_IMAGE}'
                }
            }
        }
    }
}
