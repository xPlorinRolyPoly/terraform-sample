provider "aws" {
  region = "eu-central-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "tfec2" {
  ami = "ami-03c3a7e4263fd998c"
  //instance_type = var.types["eu-central-1"]
  instance_type = var.list[0]
}