pipeline { 
    agent any 
    stages {
        stage('Build') {  //1         stage 1  ให้ทำการ  Build  ที่ script/deploy.sh
            steps { 
                sh ' chmod 777 script/deploy.sh' 
            }
        }
        stage('Deploy'){  //2  stage 2 ให้ทำการ  Build  ที่ deploy02.sh
            steps {
                sh 'chmod 777 deploy02.sh' 
               
            }
        
        
            
        }
    }
}
