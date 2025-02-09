pipeline {
    agent any
    parameters {
        string(name: 'USER_INPUT', defaultValue: 'default value', description: 'Enter a message')
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/username/SimpleJenkinsProject.git'
            }
        }
        stage('Run Script') {
            steps {
                sh 'chmod +x script.sh && ./script.sh "${params.USER_INPUT}"'
            }
        }
        stage('Archive Output') {
            steps {
                archiveArtifacts artifacts: 'output_*.html', fingerprint: true
            }
        }
    }
}