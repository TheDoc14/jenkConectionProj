pipeline {
    agent any
    parameters {
        string(name: 'USER_INPUT', defaultValue: 'Default input', description: 'Enter your input')
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/TheDoc14/jenkConectionProj.git'
            }
        }
        stage('Build') {
            steps {
                bat 'echo Building the project...'
                bat 'dir'  // מציג את הקבצים בתיקייה
            }
        }
        stage('Run Script') {
            steps {
                script {
                    def userInput = params.USER_INPUT
                    bat "script.cmd \"${userInput}\""
                }
            }
        }
        stage('Archive Output') {
            steps {
                bat 'echo Archiving output...'
                archiveArtifacts artifacts: '**/*.html', allowEmptyArchive: true
            }
        }
    }
}
