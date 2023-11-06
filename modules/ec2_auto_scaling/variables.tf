# Name for the AWS Launch Template used by the Auto Scaling Group (ASG).
variable "lt_asg_name" {
  default = "2-tier-lt-asg"
  type    = string
}

# AMI (Amazon Machine Image) ID for the Launch Template.
variable "lt_asg_ami" {
  default     = "ami-075b165b55797e19d"
  description = "Amazon Linux 2 AMI (HVM) - Kernel 5.10, SSD Volume Type"
  type        = string
}

# Instance type for the Launch Template.
variable "lt_asg_instance_type" {
  default = "t2.micro"
  type    = string
}

# Key pair for EC2 instances launched by the Launch Template.
variable "lt_asg_key" {
  default     = "esteban_key_pair"
  description = "Key Pair"
  type        = string
}

# Security Group ID for the Auto Scaling Group (ASG).
variable "asg_sg_id" {}

# Name for the Auto Scaling Group (ASG).
variable "asg_name" {
  default = "Two-tier ASG"
  type    = string
}

# Maximum number of instances in the Auto Scaling Group (ASG).
variable "asg_max" {
  default = 5
  type    = number
}

# Minimum number of instances in the Auto Scaling Group (ASG).
variable "asg_min" {
  default = 2
  type    = number
}

# Desired capacity (initial number of instances) for the Auto Scaling Group (ASG).
variable "asg_desired_capacity" {
  default = 2
  type    = number
}

# ID of the first public subnet where the ASG will launch instances.
variable "public_subnet1_id" {}

# ID of the second public subnet where the ASG will launch instances.
variable "public_subnet2_id" {}

# Tag name for identifying instances in the Auto Scaling Group (ASG).
variable "asg_tag_name" {
  default = "Two-tier ASG"
  type    = string
}

# ARN of the Application Load Balancer's Target Group.
variable "alb_tg_arn" {}
