terraform {
  required_providers {
    my_aws_provider = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "my_aws_provider" {
  region = "ap-south-1"
}
