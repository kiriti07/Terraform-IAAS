pipeline {
	
     environment {
	     AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
	     AWS_SECRET_KEY_ID = credentials('AWS_SECRET_KEY_ID')
    }
	
    agent any
    environment {
        AWS_DEFAULT_REGION = "us-east-1"
    }
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/kiriti07/Terraform-IAAS.git', branch: 'main'
            }
        }
        stage('Initialize') {
            steps {
		//sh 'cd /home/ec2-user/Terraform-IAAS/terraform'
                sh 'terraform init'
            }
        }
        stage('Plan') {
            steps {
                //withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                   // sh 'terraform plan -out=tfplan -var-file=terraform.tfvars'
		   //sh '/home/ec2-user/Terraform-IAAS/terraform'
                   sh 'terraform plan'
                	}
            	}
        stage('Apply') {
            steps {
                //withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
		    //sh '/home/ec2-user/Terraform-IAAS/terraform'
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        stage('Cleanup') {
            steps {
                echo 'EC2 Instance is Successfully Deployed'
                //sh 'terraform destroy -auto-approve -var-file=terraform.tfvars'
            }
        }
    }
}
