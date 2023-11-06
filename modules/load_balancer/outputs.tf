# Output the DNS name of the AWS Application Load Balancer (ALB) in the public subnets.
output "alb_dns" {
  value = aws_lb.public_subnet_alb.dns_name
}

# Output the ARN (Amazon Resource Name) of the AWS Application Load Balancer (ALB).
output "alb_arn" {
  value = aws_lb.public_subnet_alb.arn
}

# Output the ID of the AWS Application Load Balancer (ALB).
output "alb_id" {
  value = aws_lb.public_subnet_alb.id
}

# Output the ARN of the AWS Target Group used by the ALB to route traffic to backend instances.
output "alb_tg_arn" {
  value = aws_lb_target_group.alb_target_group.arn
}

# Output the ID of the AWS Target Group used by the ALB.
output "alb_tg_id" {
  value = aws_lb_target_group.alb_target_group.id
}
