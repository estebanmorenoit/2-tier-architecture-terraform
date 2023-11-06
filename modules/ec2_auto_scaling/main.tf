# Create an AWS Launch Template for the Auto Scaling Group (ASG).
resource "aws_launch_template" "lt_asg" {
  name                   = var.lt_asg_name
  image_id               = var.lt_asg_ami
  instance_type          = var.lt_asg_instance_type
  key_name               = var.lt_asg_key
  vpc_security_group_ids = [var.asg_sg_id]
  user_data              = filebase64("${path.root}/install-apache.sh")
}

# Create an AWS Auto Scaling Group (ASG) to manage instances based on the Launch Template.
resource "aws_autoscaling_group" "asg" {
  name                = var.asg_name
  max_size            = var.asg_max
  min_size            = var.asg_min
  desired_capacity    = var.asg_desired_capacity
  vpc_zone_identifier = [var.public_subnet1_id, var.public_subnet2_id]

  launch_template {
    id      = aws_launch_template.lt_asg.id
    version = "$Latest"  # Latest version of the Launch Template.
  }

  # Create a tag to identify instances in the Auto Scaling Group.
  tag {
    key                 = "Name"
    value               = var.asg_tag_name
    propagate_at_launch = true
  }
}

# Attach the Auto Scaling Group to the Application Load Balancer's Target Group.
resource "aws_autoscaling_attachment" asg_tg_attachment {
  autoscaling_group_name = aws_autoscaling_group.asg.id
  lb_target_group_arn    = var.alb_tg_arn
}
