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

/*
variable "amis" {
  type = map
  default = {
    ohio: "ami-064ff912f78e3e561",
    oregon: "ami-0b28dfc7adc325ef4"
  }
}
*/

/*
variable "ips_homolog" {
  type = list
  default = ["191.240.217.145/32","192.240.217.145/32"]
}
*/