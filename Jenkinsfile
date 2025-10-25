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

       stage('Validate') {
          steps {
             sh 'terraform validate'
          }   
       }

       stage('plan') {
          steps {
             sh 'terraform plan'
          }
       }
       
       stage('Apply') {
          steps {
             sh 'terraform apply -auto-approve'
          }
       }
   }           
}             
              
