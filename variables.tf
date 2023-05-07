variable "aws_access_key" {
  description = "AWS Access Key"
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
}

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID"
  default     = "ami-016eb5d644c333ccb"
}

variable "instance_type" {
  description = "Instance type"
  default     = "t2.micro"
}
