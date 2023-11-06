# Output the name of the Auto Scaling Group (ASG).
output "asg_name" {
  value = aws_autoscaling_group.asg.name
}

# Output the ID of the Auto Scaling Group (ASG).
output "asg_id" {
  value = aws_autoscaling_group.asg.id
}

# Output the ARN (Amazon Resource Name) of the Auto Scaling Group (ASG).
output "asg_arn" {
  value = aws_autoscaling_group.asg.arn
}
