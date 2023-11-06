########## VPC Variables ########## 

variable "vpc_cidr" {
  default = "10.0.0.0/16"
  type    = string
}

variable "vpc_instance_tenancy" {
  default = "default"
  type    = string
}

variable "vpc_name" {
  default = "My 2-Tier VPC"
  type    = string
}

variable "public_subnet1_cidr" {
  default = "10.0.1.0/24"
  type    = string
}

variable "public_subnet2_cidr" {
  default = "10.0.2.0/24"
  type    = string
}

variable "private_subnet1_cidr" {
  default = "10.0.3.0/24"
  type    = string
}

variable "private_subnet2_cidr" {
  default = "10.0.4.0/24"
  type    = string
}

variable "availability_zone_1" {
  default = "eu-west-2a"
  type    = string
}

variable "availability_zone_2" {
  default = "eu-west-2b"
  type    = string
}

variable "public_subnet1_name" {
  default = "Public Subnet 1"
  type    = string
}

variable "public_subnet2_name" {
  default = "Public Subnet 2"
  type    = string
}

variable "private_subnet1_name" {
  default = "Private Subnet 1"
  type    = string
}

variable "private_subnet2_name" {
  default = "Private Subnet 2"
  type    = string
}

variable "igw_name" {
  default = "2-Tier Internet Gateway"
  type    = string
}

variable "nat_gateway_name" {
  default = "2-Tier Nat Gateway"
  type    = string
}

variable "public_rt_cidr" {
  default = "0.0.0.0/0"
  type    = string
}

variable "public_rt_name" {
  default = "2-Tier Public Route Table"
  type    = string
}

variable "private_rt_cidr" {
  default = "0.0.0.0/0"
  type    = string
}

variable "private_rt_name" {
  default = "2-Tier Private Route Table"
  type    = string
}

variable "alb_sg_name" {
  default = "2-Tier ALB SG"
  type    = string
}

variable "alb_sg_tag_name" {
  default = "2-Tier ALB SG"
  type    = string
}

variable "asg_sg_name" {
  default = "2-Tier ASG SG"
  type    = string
}

variable "asg_sg_tag_name" {
  default = "2-Tier ASG SG"
  type    = string
}

variable "db_sg_name" {
  default = "2-Tier DB SG"
  type    = string
}

variable "db_sg_tag_name" {
  default = "2-Tier DB SG"
  type    = string
}
