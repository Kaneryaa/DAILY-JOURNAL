pipeline {
    agent any
    stages {
        stage('code') {
            steps {
                echo "cloning code..."
                git branch:'master', url:'https://github.com/Kaneryaa/DAILY-JOURNAL.git'
            }
        }
        stage('build') {
            steps {
                echo "build"
                sh ' Devops_Project | sudo -S docker build . -t danish1234512/your-image-name'


            }
        }
        stage('Docker run') {
            steps {
                echo "Docker run..."
                sh 'docker run --name node-app-containers12 -p 3000:3000 danish1234512/your-image-name'
            }
        }
    }
}
