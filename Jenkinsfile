pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('Access_key')
        AWS_SECRET_ACCESS_KEY = credentials('secret_key')
    }

    stages {
        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/aieshatanveer/terraform.git', branch: 'main'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init -upgrade'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -var-file=Terraform.tfvars -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            when {
                branch 'main' // only run apply on main branch
            }
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }
}
