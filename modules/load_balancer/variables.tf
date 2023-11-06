# Name for the AWS Application Load Balancer (ALB) resource in the public subnets.
variable "public_subnet_alb_name" {
  default = "two-tier-public-subnet-alb"
  type    = string
}

# Security Group ID for the ALB resource.
variable "alb_sg_id" {}

# IDs of the public subnets where the ALB will be deployed.
variable "public_subnet1_id" {}
variable "public_subnet2_id" {}

# Tag name for the ALB resource for improved identification.
variable "public_subnet_alb_name_tag" {
  default = "Two-Tier Public Subnet ALB"
  type    = string
}

# Name for the AWS Target Group resource.
variable "target_group_name" {
  default = "two-tier-target-group"
  type    = string
}

# Port configuration for the Target Group.
variable "target_group_port" {}

# Protocol configuration for the Target Group.
variable "target_group_protocol" {}

# VPC (Virtual Private Cloud) ID where the resources will be created.
variable "vpc_id" {}

# Port number for the ALB listener.
variable "alb_listener_port" {}

# Protocol configuration for the ALB listener.
variable "alb_listener_protocol" {}
