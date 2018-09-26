pipeline { 
    agent any 
    stages {
        stage('Build') {  //1
            steps { 
                sh ' chmod 777 script/deploy.sh' 
            }
        }
        stage('Deploy'){  //2 
            steps {
                sh 'chmod 777 deploy02.sh'
               
            }
        
        
            
        }
    
}
