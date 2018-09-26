pipeline { 
    agent any 
    stages {
        stage('Build') {  //1
            steps { 
                sh ' chmod 777 script/deploy.sh' 
            }
        }
        stage('Test'){  //2 
            steps {
                sh 'chmod 777 script/deploy.sh'
               
            }
        }
        stage('Deploy') {  //3 
            steps {
                sh 'make script/deploy.sh'
            }
        }
    }
}
