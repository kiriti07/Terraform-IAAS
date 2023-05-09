terraform {
  backend "s3" {
    bucket = "terraform-iaac-kiriti"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}

resource "aws_s3_bucket" "tf_state" {
  bucket = "terraform-iaac-kiriti"
  lifecycle {
      prevent_destroy = true
  }
  versioning {
      enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_instance" "App_instance" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"

  tags = {
    Name = "Example Instance 1"
  }
}
