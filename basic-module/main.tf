provider "aws" {
  region = "ap-south-1" # Mumbai
}

resource "aws_instance" "web" {
  ami           = "ami-0f58b397bc5c1f2e8" # Amazon Linux 2023 (example)
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}