pipeline { 
    agent any 
    stages {
        stage('Build') {  //1
            steps { 
                sh 'make' 
            }
        }
        stage('Test'){  //2 
            steps {
                sh 'make check'
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
