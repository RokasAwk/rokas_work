pipeline {
    agent any
    environment {
        FLUTTER_HOME = '/Users/rokasawk/Desktop/development/flutter'  // Flutter SDK 路径
        PATH = "/Users/rokasawk/Desktop/development/flutter/bin:$PATH"   // 更新 PATH 环境变量
    }
    stages {
         stage('Setup') {
            steps {
                print "${env.PATH}"
            }    
        }
        
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