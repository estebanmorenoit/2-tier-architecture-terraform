variable "lt_asg_name" {
  default = "2-tier-lt-asg"
  type    = string
}

variable "lt_asg_ami" {
  default     = "ami-075b165b55797e19d"
  description = "Amazon Linux 2 AMI (HVM) - Kernel 5.10, SSD Volume Type"
  type        = string
}

variable "lt_asg_instance_type" {
  default = "t2.micro"
  type    = string
}

variable "lt_asg_key" {
  default     = "esteban_key_pair"
  description = "Key Pair"
  type        = string
}

variable "asg_sg_id" {}

variable "asg_name" {
  default = "Two-tier ASG"
  type    = string
}

variable "asg_max" {
  default = 5
  type    = number
}

variable "asg_min" {
  default = 2
  type    = number
}

variable "asg_desired_capacity" {
  default = 2
  type    = number
}

variable "public_subnet1_id" {}
variable "public_subnet2_id" {}

variable "asg_tag_name" {
  default = "Two-tier ASG"
  type    = string
}

variable "alb_tg_arn" {}


