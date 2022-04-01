provider "aws" {
  alias = "ohio"
  region = "us-east-2"
}

resource "aws_instance" "desenvolvedor" {
  ami = var.amis.ohio
  instance_type = var.instance_type_t2_micro
  key_name = var.key_name
  tags = {
    Name = "desenvolvedor_01"
    Squad = "suprimentos"
  }
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]
}