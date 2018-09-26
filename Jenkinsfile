pipeline { 
    agent any 
    stages {
        stage('Build') { 
            steps { 
                sh 'deploy' 
            }
        }
        stage('Test'){
            steps {
                sh 'make deploy'
                junit 'reports/**/*.xml' 
            }
        }
        stage('Deploy') {
            steps {
                sh 'make deploy'
            }
        }
    }
}
