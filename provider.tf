terraform {
  required_providers {
      aws = {
      source  = "hashicorp/aws"
    }
  }
}
provider "aws" {
  version = "4.60.0"
  region = "ap-south-1"
}
