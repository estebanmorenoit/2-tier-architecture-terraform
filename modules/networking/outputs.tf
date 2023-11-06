output "vpc_id" {
  value = aws_vpc.two-tierVPC.id
}

output "public_subnet1_id" {
  value = aws_subnet.public_subnet1.id
}

output "public_subnet2_id" {
  value = aws_subnet.public_subnet2.id
}

output "private_subnet1_id" {
  value = aws_subnet.private_subnet1.id
}

output "private_subnet2_id" {
  value = aws_subnet.private_subnet2.id
}

output "intern_gateway_id" {
  value = aws_internet_gateway.two_tier_internet_gateway.id
}

output "public_routetable_id" {
  value = aws_route_table.public_routetable.id
}

output "private_routetable_id" {
  value = aws_route_table.private_routetable.id
}

output "alb_sg_id" {
  value = aws_security_group.alb_sg.id
}

output "asg_sg_id" {
  value = aws_security_group.asg_sg.id
}

output "db_sg_id" {
  value = aws_security_group.db_sg.id
}