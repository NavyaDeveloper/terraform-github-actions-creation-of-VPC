variable "sg_id" {
  description = "sgid for alb"
  type = string
}
variable "subnets" {
  description = "subnets ids for alb"
  type = list(string)
}
variable "vpc_id" {
  description = "vpc_id"
  type = string
}
variable "instances" {
  description = "target grp instance"
  type = list(string)
}