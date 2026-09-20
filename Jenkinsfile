pipeline {
    agent any
    stages {
        stage ("code build") {
            steps {
                git branch: 'Practise1', url: 'https://github.com/AbhishekReddyKotta/Docker.git'
            }
        }
        stage ("image build") {
            steps {
                // sh 'sudo chmod 777 /var/run/docker.sock'
                sh 'docker build -t movie:${BUILD_NUMBER} .'
            }
        }
        stage ("container") {
            steps {
                sh 'docker run -p 1111:80 -d --name movieapp_${BUILD_NUMBER} movie:${BUILD_NUMBER}'
            }
        }
    }
}
