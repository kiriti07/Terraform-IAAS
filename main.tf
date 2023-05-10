terraform {
  backend "s3" {
    bucket = "terraform-iaac-kiriti"
    key    = "terraform/s3/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-state-lock"
    encrypt = true
  }
}
  
resource "aws_instance" "App_instance" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"

  tags = {
    Name = "Example Instance 1"
  }
}
