provider "aws" {
  access_key = "AKIASXQCLADLLZNC6ROT"
  secret_key = "pQy8T1VCizAiEg2f00xIcmZ2fSstgW2/Vtg39gt3"
  region     = "us-east-1"
}

resource "aws_instance" "example_instance_1" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"

  tags = {
    Name = "Example Instance 1"
  }
}
