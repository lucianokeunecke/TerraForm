variable "amis" {
  type = map
  default = {
    ohio: "ami-064ff912f78e3e561",
    oregon: "ami-0b28dfc7adc325ef4"
  }
}

variable "key_name" {
  type = string
  default = "terraform-aws"
}

variable "ips_empresa" {
  type = list
  default = ["191.240.217.145/32"]
}

variable "ips_homolog" {
  type = list
  default = ["191.240.217.145/32","192.240.217.145/32"]
}