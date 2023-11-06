output "alb_dns" {
  value = aws_lb.public_subnet_alb.dns_name
}

output "alb_arn" {
  value = aws_lb.public_subnet_alb.arn
}

output "alb_id" {
  value = aws_lb.public_subnet_alb.id
}

output "alb_tg_arn" {
  value = aws_lb_target_group.alb_target_group.arn
}

output "alb_tg_id" {
  value = aws_lb_target_group.alb_target_group.id
}