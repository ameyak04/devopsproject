pipeline {
    agent any
    environment {
        AWS_REGION = 'us-west-2' // Change to your desired AWS region
    }
    stages {
        stage('Checkout Code') {
            steps {
                // Ensure you replace the URL with your GitHub repository URL
                git branch: 'main', url: 'https://github.com/ameyak04/devopsproject.git'
            }
        }
        stage('Initialize Terraform') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: '1']]) {
                    sh 'terraform init'
                }
            }
        }
        stage('Plan Terraform Changes') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: '1']]) {
                    sh 'terraform plan'
                }
            }
        }
        stage('Apply Terraform Changes') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: '1']]) {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
