provider "aws" {
  region     = "ap-south-1"
}

resource "aws_instance" "example_instance_1" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"

  tags = {
    Name = "Example Instance 1"
  }
}
