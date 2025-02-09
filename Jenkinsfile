pipeline {
    agent any
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
                bat 'script.bat "Hello from Jenkins!"'
            }
        }
        stage('Archive Output') {
            steps {
                bat 'echo Archiving output...'
            }
        }
    }
}
