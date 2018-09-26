pipeline { 
    agent any 
    stages {
        stage('Build') { 
            steps { 
              chmod777  sh 'script/deploy.sh' 
            }
        }
        stage('Test'){
            steps {
               chmod777 sh 'make script/deploy.sh'
               chmod777 junit 'reports/**/*.xml' 
            }
        }
        stage('Deploy') {
            steps {
               chmod777 sh 'make script/deploy.sh'
            }
        }
    }
}
