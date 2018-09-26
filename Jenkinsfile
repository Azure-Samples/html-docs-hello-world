pipeline { 
    agent any 
    stages {
        stage('Build') {  //1
            steps { 
                sh 'script/deploy.sh' 
            }
        }
        stage('Test'){  //2 
            steps {
                sh 'deploy.sh'
                junit 'reports/**/*.xml' 
            }
        }
        stage('Deploy') {  //3 
            steps {
                sh 'make publish.sh'
            }
        }
    }
}
