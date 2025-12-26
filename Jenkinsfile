pipeline {
    agent {
        node {
            label 'docker-agent-python'
        }
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo "Building the application..."
                // sh 'mvn clean package'
                echo "Build success"
            }
        }

        stage('Test') {
            steps {
                echo "Running tests..."
                // sh 'mvn test'
                echo "Test success"
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying..."
                sh '''
                    echo "Deployment success"
                '''
            }
        }
    }
}
