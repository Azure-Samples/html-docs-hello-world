pipeline { 
    agent any 
    stages {
        stage('Build') {  //1
            steps { 
                sh 'deploy' 
            }
        }
        stage('Test'){  //2 
            steps {
                sh 'deploy'
                junit 'reports/**/*.xml' 
            }
        }
        stage('Deploy') {  //3 
            steps {
                sh 'make publish'
            }
        }
    }
}
