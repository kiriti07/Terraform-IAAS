provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.region
}

resource "aws_instance" "example_instance_1" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Example Instance 1"
  }
}

resource "aws_instance" "example_instance_2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Example Instance 2"
  }
}
