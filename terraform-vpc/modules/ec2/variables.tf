variable "ec2_sgid" {
  description = "ec2_sg"
  type = string
}

variable "subnets" {
  description = "subnet ids"
  type = list(string)
}
variable "ec2_names" {
  description = "namesof ec2"
  type = list(string)
  default = [ "webserver1", "webserver" ]
}