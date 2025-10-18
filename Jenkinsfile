pipeline {
    agent any

    tools {
        maven 'Maven3' // Must match the name configured in Jenkins
    }

    stages {
        stage('Checkout') {
            steps {
                echo "Checking out code from main branch..."
                checkout([$class: 'GitSCM',
                          branches: [[name: 'master']],
                          userRemoteConfigs: [[
                              url: 'https://github.com/vikram-1998/maven-web-application.git',
                              credentialsId: 'e946e3f8-aefb-4d5b-9ddf-19ee24219b0b'
                          ]]
                ])
            }
        }

        stage('Build & Test') {
            steps {
                echo "Building project and running tests..."
                sh 'mvn clean package' // This will compile and run tests
            }
        }
    }
    
    post {
        success {
            echo "Build and tests succeeded!"
        }
        failure {
            echo "Build or tests failed!"
        }
    }
}
