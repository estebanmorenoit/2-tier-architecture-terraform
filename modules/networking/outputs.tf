# Output the ID of the VPC.
output "vpc_id" {
  value = aws_vpc.two-tierVPC.id
}

# Output the ID of the first public subnet.
output "public_subnet1_id" {
  value = aws_subnet.public_subnet1.id
}

# Output the ID of the second public subnet.
output "public_subnet2_id" {
  value = aws_subnet.public_subnet2.id
}

# Output the ID of the first private subnet.
output "private_subnet1_id" {
  value = aws_subnet.private_subnet1.id
}

# Output the ID of the second private subnet.
output "private_subnet2_id" {
  value = aws_subnet.private_subnet2.id
}

# Output the ID of the Internet Gateway for the VPC.
output "internet_gateway_id" {
  value = aws_internet_gateway.two_tier_internet_gateway.id
}

# Output the ID of the public route table.
output "public_routetable_id" {
  value = aws_route_table.public_routetable.id
}

# Output the ID of the private route table.
output "private_routetable_id" {
  value = aws_route_table.private_routetable.id
}

# Output the ID of the security group for the Application Load Balancer (ALB).
output "alb_sg_id" {
  value = aws_security_group.alb_sg.id
}

# Output the ID of the security group for the Auto Scaling Group (ASG).
output "asg_sg_id" {
  value = aws_security_group.asg_sg.id
}

# Output the ID of the security group for the RDS database (DB).
output "db_sg_id" {
  value = aws_security_group.db_sg.id
}
