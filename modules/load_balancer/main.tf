# Create an AWS Application Load Balancer (ALB) in the public subnets.
resource "aws_lb" "public_subnet_alb" {
  name               = var.public_subnet_alb_name
  load_balancer_type = "application"
  security_groups    = [var.alb_sg_id]
  subnets            = [var.public_subnet1_id, var.public_subnet2_id]

  tags = {
    Name = var.public_subnet_alb_name_tag
  }
}

# Create an AWS Target Group to define how traffic is distributed to the backend instances.
resource "aws_lb_target_group" "alb_target_group" {
  name     = var.target_group_name
  port     = var.target_group_port
  protocol = var.target_group_protocol
  vpc_id   = var.vpc_id
}

# Create an ALB listener to listen for incoming traffic and forward it to the target group.
resource "aws_lb_listener" "alb_listener" {
  load_balancer_arn = aws_lb.public_subnet_alb.arn
  port              = var.alb_listener_port
  protocol          = var.alb_listener_protocol

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.alb_target_group.arn
  }
}
