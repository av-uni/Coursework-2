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
        stage('Deploy to Kubernetes') {
            steps {
                script {
                    // Start Minikube and set context
                    sh 'minikube start --driver=docker'
                    sh 'kubectl config use-context minikube'
                    
                    // Create Kubernetes deployment and service
                    sh 'kubectl apply -f deployment.yaml'
                    sh 'kubectl apply -f service.yaml'

                    // Verify that pods and services are running
                    sh 'kubectl get pods'
                    sh 'kubectl get services'
                }
            }
        }
    }
}

