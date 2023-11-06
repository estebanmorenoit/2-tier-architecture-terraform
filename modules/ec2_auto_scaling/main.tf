resource "aws_launch_template" "lt_asg" {
  name                   = var.lt_asg_name
  image_id               = var.lt_asg_ami
  instance_type          = var.lt_asg_instance_type
  key_name               = var.lt_asg_key
  vpc_security_group_ids = [var.asg_sg_id]
  user_data              = filebase64("${path.root}/install-apache.sh")
}

resource "aws_autoscaling_group" "asg" {
  name                = var.asg_name
  max_size            = var.asg_max
  min_size            = var.asg_min
  desired_capacity    = var.asg_desired_capacity
  vpc_zone_identifier = [var.public_subnet1_id, var.public_subnet2_id]

  launch_template {
    id      = aws_launch_template.lt_asg.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = var.asg_tag_name
    propagate_at_launch = true
  }
}

resource "aws_autoscaling_attachment" "asg_tg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.asg.id
  lb_target_group_arn    = var.alb_tg_arn
}