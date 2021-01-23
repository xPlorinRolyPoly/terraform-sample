provider "aws" {
  region = "eu-central-1"
  access_key = "XXXXXXXXXXXXXXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXXXXXXXXXXX"
}

resource "aws_instance" "ec2_terraform" {
  ami = "ami-03c3a7e4263fd998c"
  instance_type = "t2.micro"
}