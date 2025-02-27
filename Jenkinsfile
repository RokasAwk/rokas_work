pipeline {
    agent any
    environment {
        PATH = "/Users/rokasawk/Desktop/development/flutter/bin:$PATH" 
    }
    stages {
        stage('Build') { 
            steps {
                // Ensure Flutter is available
                sh 'flutter --version'
                sh 'flutter pub get'
                sh 'flutter build apk'
            }
        }
        stage('Test') { 
            steps {
                sh 'flutter test' 
            }
        }
    }
}