pipeline {

    agent any

    environment {

        AWS_ACCESS_KEY_ID = credentials('aws-access-key')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')

    }

    stages {

        stage('Checkout') {

            steps {

                git branch: 'main',
                url: 'https://github.com/suren00-77-99/Terraform-works.git'
            }
        }

        stage('Terraform Init') {

            steps {

                sh 'terraform init'

            }
        }

        stage('Terraform Validate') {

            steps {

                sh 'terraform validate'

            }
        }

        stage('Terraform Plan') {

            steps {

                sh '''
                terraform plan -out=tfplan
                '''
            }
        }

        stage('Approval') {

            steps {

                input 'Approve Deployment?'

            }
        }

        stage('Terraform Apply') {

            steps {

                sh '''
                terraform apply -auto-approve tfplan
                '''
            }
        }

    }

}