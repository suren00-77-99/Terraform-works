
provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "demo_bucket" {

  bucket = "suren-demo-bucket-123456"
  tags = {
    Name = "Demo Bucket"
    Env  = "Dev"
  }
}