provider "aws" {
  region = "eu-central-1"
  access_key = var.accesskey
  secret_key = var.secretkey
}

resource "aws_instance" "ec2_terraform" {
  ami = "ami-03c3a7e4263fd998c"
  instance_type = var.instancetype
}