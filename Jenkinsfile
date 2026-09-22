pipeline {
    agent any
    stages {
        stage ("code build") {
            steps {
                git branch: 'nodejs-docker-demo', url: 'https://github.com/AbhishekReddyKotta/Docker.git'
            }
        }
        stage ("image build") {
            steps {
                // sh 'sudo chmod 777 /var/run/docker.sock'
                sh 'docker build -t nodeimg:${BUILD_NUMBER} .'
            }
        }
        stage ("container") {
            steps {
                sh 'docker run -p 1111:80 -d --name nodeapp_${BUILD_NUMBER} nodeimg:${BUILD_NUMBER}'
            }
        }
    }
}
