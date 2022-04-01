output "maquina_desenvolvedor" {
  value = {
  "public_ip" : [aws_instance.desenvolvedor.public_ip],
  "public_dns" :  [aws_instance.desenvolvedor.public_dns]
  }
}