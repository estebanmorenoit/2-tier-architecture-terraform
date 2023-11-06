########## VPC Variables ########## 

# The CIDR block for the VPC.
variable "vpc_cidr" {
  default = "10.0.0.0/16"
  type    = string
}

# The tenancy option for the VPC (e.g., "default" or "dedicated").
variable "vpc_instance_tenancy" {
  default = "default"
  type    = string
}

# Name for the 2-Tier VPC.
variable "vpc_name" {
  default = "My 2-Tier VPC"
  type    = string
}

# CIDR block for the first public subnet.
variable "public_subnet1_cidr" {
  default = "10.0.1.0/24"
  type    = string
}

# CIDR block for the second public subnet.
variable "public_subnet2_cidr" {
  default = "10.0.2.0/24"
  type    = string
}

# CIDR block for the first private subnet.
variable "private_subnet1_cidr" {
  default = "10.0.3.0/24"
  type    = string
}

# CIDR block for the second private subnet.
variable "private_subnet2_cidr" {
  default = "10.0.4.0/24"
  type    = string
}

# Availability zone for the first public subnet.
variable "availability_zone_1" {
  default = "eu-west-2a"
  type    = string
}

# Availability zone for the second public subnet.
variable "availability_zone_2" {
  default = "eu-west-2b"
  type    = string
}

# Name for the first public subnet.
variable "public_subnet1_name" {
  default = "Public Subnet 1"
  type    = string
}

# Name for the second public subnet.
variable "public_subnet2_name" {
  default = "Public Subnet 2"
  type    = string
}

# Name for the first private subnet.
variable "private_subnet1_name" {
  default = "Private Subnet 1"
  type    = string
}

# Name for the second private subnet.
variable "private_subnet2_name" {
  default = "Private Subnet 2"
  type    = string
}

# Name for the Internet Gateway.
variable "igw_name" {
  default = "2-Tier Internet Gateway"
  type    = string
}

# Name for the NAT Gateway.
variable "nat_gateway_name" {
  default = "2-Tier Nat Gateway"
  type    = string
}

# CIDR block for the public route table.
variable "public_rt_cidr" {
  default = "0.0.0.0/0"
  type    = string
}

# Name for the public route table.
variable "public_rt_name" {
  default = "2-Tier Public Route Table"
  type    = string
}

# CIDR block for the private route table.
variable "private_rt_cidr" {
  default = "0.0.0.0/0"
  type    = string
}

# Name for the private route table.
variable "private_rt_name" {
  default = "2-Tier Private Route Table"
  type    = string
}

# Name for the security group of the Application Load Balancer (ALB).
variable "alb_sg_name" {
  default = "2-Tier ALB SG"
  type    = string
}

# Tag name for the security group of the Application Load Balancer (ALB).
variable "alb_sg_tag_name" {
  default = "2-Tier ALB SG"
  type    = string
}

# Name for the security group of the Auto Scaling Group (ASG).
variable "asg_sg_name" {
  default = "2-Tier ASG SG"
  type    = string
}

# Tag name for the security group of the Auto Scaling Group (ASG).
variable "asg_sg_tag_name" {
  default = "2-Tier ASG SG"
  type    = string
}

# Name for the security group of the RDS database.
variable "db_sg_name" {
  default = "2-Tier DB SG"
  type    = string
}

# Tag name for the security group of the RDS database.
variable "db_sg_tag_name" {
  default = "2-Tier DB SG"
  type    = string
}
