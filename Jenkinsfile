pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('access_key')
        AWS_SECRET_ACCESS_KEY = credentials('secret_key')
    }
    stages {
       stage('checkout code') {
          steps {
             git url: 'https://github.com/aieshatanveer/terraform.git', branch: 'main'
          }
       }

       stage('terraform Init') {
          steps {
             sh 'terraform init'
          }
       }

       stage('terraform plan') {
          steps {
             sh 'terraform plan -var -file=environment.tfvars'
          }
       }
       
       stage('terraform Apply') {
          steps {
             sh 'terraform apply -var -file=environment.tfvars -auto-approve'
          }
       }
   }           
}             
              
