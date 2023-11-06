variable "public_subnet_alb_name" {
  default = "two-tier-public-subnet-alb"
  type    = string
}

variable "alb_sg_id" {}
variable "public_subnet1_id" {}
variable "public_subnet2_id" {}

variable "public_subnet_alb_name_tag" {
  default = "Two-Tier Public Subnet ALB"
  type    = string
}

variable "target_group_name" {
  default = "two-tier-target-group"
  type    = string
}

variable "target_group_port" {}
variable "target_group_protocol" {}
variable "vpc_id" {}
variable "alb_listener_port" {}
variable "alb_listener_protocol" {}

