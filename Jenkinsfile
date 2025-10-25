pipeline {
    agent any
    
    stages {
       stage('checkout code') {
          steps {
             git url: 'https://github.com/aieshatanveer/terraform.git', branch: 'main'
          }
       }

       stage('Init') {
          steps {
             sh 'terraform init'
          }
       }

        stage('validate') {
            steps {
                sh 'terraform validate'
            }
        }
        
       stage('terraform plan') {
          steps {
             sh 'terraform plan'
          }
       }
       
       stage('terraform Apply') {
          steps {
             sh 'terraform apply -auto-approve'
          }
       }
   }           
}             
              
