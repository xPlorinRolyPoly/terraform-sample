provider "aws" {
  region = "eu-central-1"
  access_key = "XXXXXXXXXXXXXXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXXXXXXXXXXX"
}

resource "aws_eip" "lb" {
  vpc = true
}

resource "aws_s3_bucket" "terraforms3" {
  bucket = "alpana-terraform-bkt"
}

output "eip" {
  value = aws_eip.lb.public_ip
}

output "terraforms3bkt" {
  value = aws_s3_bucket.terraforms3.bucket_domain_name
}