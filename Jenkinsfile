pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/kiriti07/Terraform-IAAS.git', branch: 'main'
            }
        }
        stage('Initialize') {
            steps {
		//sh 'cd /home/ec2-user/Terraform-IAAS/terraform'
                sh 'terraform init -upgrade'
            }
        }
        stage('Plan') {
            steps {
                //withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                   // sh 'terraform plan -out=tfplan -var-file=terraform.tfvars'
		   //sh '/home/ec2-user/Terraform-IAAS/terraform'
                   sh 'terraform plan -debug >> terraform.log'
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
