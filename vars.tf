variable "amis" {
  default = {
    "us-east-1-ubuntu20" = "ami-09e67e426f25ce0d7"
  }
}

variable "instance_type" {
  default = {
    "micro" = "t2.micro"
  }
}