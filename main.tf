
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "maquina_wp" {
  ami           = "${var.amis["us-east-1-ubuntu20"]}"
  instance_type = "${var.instance_type.micro}"
  key_name      = "ssh-terraform"
  tags = {
    Name = "maquina_ansible_com_wordpress"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso_geral.id}"]
}