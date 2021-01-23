variable "secret_key" {}
variable "access_key" {}

variable "list" {
  type = list
  default = ["t2.nano", "t2.micro","t2.small"]
}

variable "types" {
  type = map
  default = {
      us-west-1 = "t2.micro"
      us-west-2 = "t2.nano"
      eu-central-1 = "t2.small"
  }
}