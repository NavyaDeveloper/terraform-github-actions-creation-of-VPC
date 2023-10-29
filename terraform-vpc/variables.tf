variable "vpc_cidr" {
  description = "vpc_cidr"
  type = string
}

variable "subnet_cidr" {
  description = "subnet_cidr"
  type = list(string)
}