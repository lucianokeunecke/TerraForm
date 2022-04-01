resource "aws_security_group" "allow-ssh" {
  provider = "aws.Ohio"
  name = "allow-ssh"
  description = "SG para liberar acesso SSH (Secure Shell)"
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

/*
resource "aws_security_group" "allow-ssh-oregon" {
  provider = "aws.oregon"
  name = "allow-ssh"
  description = "SG para liberar acesso SSH"
  ingress {
    from_port = 22
    protocol  = "TCP"
    to_port   = 22
    cidr_blocks = var.ips_homolog
  }
  egress {
    from_port = 0
    protocol  = "-1"
    to_port   = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}
*/