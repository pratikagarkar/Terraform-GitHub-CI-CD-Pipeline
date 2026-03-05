# Main Terraform Configuration
provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "devops_bucket" {
  bucket = "devops-terraform-demo-bucket"

  tags = {
    Name        = "DevOpsBucket"
    Environment = "Dev"
  }
}