node { 
    stage('Build') { 
        sh ' chmod 777 make' 
    }
    stage('Test') {
        sh 'make check'
        junit 'chmod 777 reports/**/*.xml' 
    }
    stage('Deploy') {
        sh 'chmod 777 make publish'
    }
}
