terraform {
  required_providers {
      aws_provider = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws_provider" {
  region = "ap-south-1"
}
