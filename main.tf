resource "aws_instance" "App_instance" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"

  tags = {
    Name = "Example Instance 1"
  }
}
