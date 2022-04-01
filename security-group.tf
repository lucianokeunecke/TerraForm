resource "aws_security_group" "allow-ssh" {
  name = "allow-ssh"
  description = "SG para liberar acesso SSH"
  ingress {
    from_port = 22
    protocol  = "TCP"
    to_port   = 22
    cidr_blocks = var.ips_empresa
  }
  egress {
    from_port = 0
    protocol  = "-1"
    to_port   = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}