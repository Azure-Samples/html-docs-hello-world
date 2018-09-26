pipeline { 
    agent any 
    stages {
        stage('Build') { 
            steps { 
                sh '  script/deploy.sh' 
            }
        }
        stage('Test'){
            steps {
                sh ' make script/deploy.sh'
                junit ' reports/**/*.xml' 
            }
        }
        stage('Deploy') {
            steps {
                sh 'make script/deploy.sh'
            }
        }
    }
}
