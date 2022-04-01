provider "aws" {
  region = "us-east-2"
}

provider "aws" {
  alias = "oregon"
  region = "us-west-2"
}

resource "aws_instance" "desenvolvedor" {
  ami = var.amis.ohio
  instance_type = "t2.micro"
  key_name = var.key_name
  tags = {
    Name = "desenvolvedor_01"
    Squad = "suprimentos"
  }
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]
}



/*

resource "aws_instance" "dev" {
  count = 3
  ami = var.amis.ohio
  instance_type = "t2.micro"
  key_name = var.key_name
  tags = {
    Name = "dev_${count.index}"
    Squad = "financeiro"
  }
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]
}

resource "aws_instance" "dev4" {
  ami = var.amis.ohio
  instance_type = "t2.micro"
  key_name = var.key_name
  tags = {
    Name = "dev_5"
    Squad = "financeiro"
  }
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]
  depends_on = [aws_s3_bucket.dev4]
}

resource "aws_instance" "dev5" {
  ami = var.amis.ohio
  instance_type = "t2.micro"
  key_name = var.key_name
  tags = {
    Name = "dev_6"
    Squad = "financeiro"
  }
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]
  depends_on = [aws_s3_bucket.dev4]
}

resource "aws_instance" "homolog1" {
  provider = aws.oregon
  ami = var.amis.oregon
  instance_type = "t2.micro"
  key_name = var.key_name
  tags = {
    Name = "homolog1"
    Squad = "financeiro"
  }
  vpc_security_group_ids = [aws_security_group.allow-ssh-oregon.id]
  depends_on = [aws_dynamodb_table.financeiro_homolog]
}

resource "aws_dynamodb_table" "financeiro_homolog" {
  provider = aws.oregon
  name = "financeiro_homolog"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "id"
  attribute {
    name = "id"
    type = "S"
  }
}

resource "aws_s3_bucket" "dev4" {
  bucket = "infnetlucianokeunecke"
}
*/