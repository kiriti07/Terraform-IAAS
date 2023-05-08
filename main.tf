provider "aws" {
  access_key = "AKIASXQCLADLGYN3G6GX"
  secret_key = "acZvcx2D1BTm777vWXtA3qa40deOPMASDe08ONn2"
  region     = "ap-south-1"
}

resource "aws_instance" "example_instance_1" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"

  tags = {
    Name = "Example Instance 1"
  }
}
