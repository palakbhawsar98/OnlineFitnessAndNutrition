pipeline {
    
	agent any
	
	tools {
         maven 'maven' 
    }
		
	
   stages{
        
        stage('BUILD'){
            steps {
                sh 'mvn clean install -DskipTests'
		archiveArtifacts artifacts: '**/target/*.war'    
            }
          
        }

	stage('UNIT TEST'){
            steps {
                sh 'mvn test'
            }
        }

	stage('INTEGRATION TEST'){
            steps {
                sh 'mvn verify -DskipUnitTests'
            }
        }
		
    }

}
