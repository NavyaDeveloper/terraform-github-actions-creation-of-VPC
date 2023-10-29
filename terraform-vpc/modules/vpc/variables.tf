variable "vpc_cidr" {
  description = "vpc_cidr"
  type = string
}
variable "subnet_cidr" {
  description = "subnet_cidr"
  type = list(string)
}
variable "subnet_names" {
    description = "subnet_names"
    type = list(string)
    default = [ "publicsubnet1", "publicsubnet2" ]
  
}