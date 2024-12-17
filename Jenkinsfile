pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'mohan006007/webserver-1:latest'//Replace your Docker imagename
        DOCKER_REGISTRY = 'docker.io'
        DOCKER_USERNAME = 'mohan006007'//Replace your Username
        DOCKER_ACCESS_TOKEN = 'dckr_pat_P0MyVznrCvzc7PqJh0p0vlD_Tp4'// Replace your Docker Access Token
    }

    stages {
        stage('GetDockerFile') {
            steps {
                git url: 'https://github.com/ShailAdmin/MaventestCode.git', branch: 'master'
            }
        }

        stage('DockerReady') {
            steps {
                script {
                    sh 'docker --version'
                }
            }
        }

        stage('CreateDockerImage') {
            steps {
                script {
                    sh 'docker build -t ${DOCKER_IMAGE} .'
                }
            }
        }

        stage('DockerLogin') {
            steps {
                script {
                    sh """
                        echo \$DOCKER_ACCESS_TOKEN | docker login --username \$DOCKER_USERNAME --password-stdin
                    """
                }
            }
        }

        stage('ImagePush') {
            steps {
                script {
                    sh 'docker push ${DOCKER_IMAGE}'
                }
            }
        }
    }
}
