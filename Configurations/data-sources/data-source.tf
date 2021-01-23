provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "eu-west-2"
}

data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]


  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "instance-1" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"
}