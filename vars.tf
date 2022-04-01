variable "amis" {
  type = map
  default = {
    ohio: "ami-064ff912f78e3e561"
  }
}

variable "key_name" {
  type = string
  default = "terraform-aws"
}

variable "instance_type_t2_micro" {
  type = string
  default = "t2.micro"
}

variable "ips_empresa" {
  type = list
  default = ["179.190.112.206/32", "179.191.112.206/32", "179.192.112.206/32"]
}