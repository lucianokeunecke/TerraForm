/*
output "public_ip" {
  value = aws_instance.desenvolvedor.public_ip
}

output "public_dns" {
  value = aws_instance.desenvolvedor.public_dns
}

output "desenvolvedor" {
  value = [aws_instance.desenvolvedor.public_ip, aws_instance.desenvolvedor.public_dns]
}
*/

output "maquina_desenvolvedor" {
  value = {
  "public_ip" : [aws_instance.desenvolvedor.public_ip],
  "public_dns" :  [aws_instance.desenvolvedor.public_dns]
  }
}