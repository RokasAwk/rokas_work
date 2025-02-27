pipeline {
    agent {
        docker {
            image 'jenkinsci/blueocean' 
            args '-p 3000:3000' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'flutter build' 
            }
        }
    }
}