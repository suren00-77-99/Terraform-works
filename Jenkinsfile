pipeline {

    agent any

    triggers {

        githubPush()

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

                dir('aws-S3/backend-s3') {

                    sh 'terraform init'

                }

            }

        }

        stage('Terraform Validate') {

            steps {

                dir('aws-S3/backend-s3') {

                    sh 'terraform validate'

                }

            }

        }

        stage('Terraform Plan') {

            steps {

                dir('aws-S3/backend-s3') {

                    sh 'terraform plan'

                }

            }

        }

        stage('Terraform Apply') {

            steps {

                dir('aws-S3/backend-s3') {

                    sh 'terraform apply -auto-approve'

                }

            }

        }

    }

}