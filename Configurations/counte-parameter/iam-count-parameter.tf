provider "aws" {
  region     = "eu-central-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

variable "elb_names" {
  type = list
  default = ["dev-loadbalancer", "stage-loadbalanacer","prod-loadbalancer"]
}

resource "aws_iam_user" "lb" {
  name = "loadbalancer.${count.index}"
  //name = var.elb_names[count.index]
  count = 3
  path = "/system/"
}