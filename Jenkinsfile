pipeline { 
    agent any 
    stages {
        stage('Build') { 
            steps { 
                sh ' chmod777 script/deploy.sh' 
            }
        }
        stage('Test'){
            steps {
                sh ' chmod777 make script/deploy.sh'
                junit 'chmod777 reports/**/*.xml' 
            }
        }
        stage('Deploy') {
            steps {
                sh 'chmod777 make script/deploy.sh'
            }
        }
    }
}
