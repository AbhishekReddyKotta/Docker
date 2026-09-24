pipeline {
    agent any
    stages {
        stage ("code build") {
            steps {
                git branch: 'python-docker-demo', url: 'https://github.com/AbhishekReddyKotta/Docker.git'
            }
        }
        stage ("image build") {
            steps {
                // sh 'sudo chmod 777 /var/run/docker.sock'
                sh 'docker build -t pythonimg:${BUILD_NUMBER} .'
            }
        }
        stage ("container") {
            steps {
                sh 'docker run -p 1111:8000 -d --name pythonapp_${BUILD_NUMBER} pythonimg:${BUILD_NUMBER}'
            }
        }
    }
}
