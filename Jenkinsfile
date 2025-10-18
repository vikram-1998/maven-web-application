pipeline {
    agent any

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
    }
}
