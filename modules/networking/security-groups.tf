# Create a security group for the Application Load Balancer (ALB).
resource "aws_security_group" "alb_sg" {
  name   = var.alb_sg_name
  vpc_id = aws_vpc.two-tierVPC.id

  # Define inbound rules to allow incoming HTTP traffic from any source.
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Define outbound rules to allow all traffic from the security group.
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.alb_sg_tag_name
  }
}

# Create a security group for the Auto Scaling Group (ASG).
resource "aws_security_group" "asg_sg" {
  name   = var.asg_sg_name
  vpc_id = aws_vpc.two-tierVPC.id

  # Define inbound rules to allow incoming HTTP traffic from the ALB security group.
  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.alb_sg.id]
  }

  # Define inbound rules to allow incoming SSH traffic from any source.
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Define outbound rules to allow all traffic from the security group.
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.asg_sg_tag_name
  }
}

# Create a security group for the RDS database.
resource "aws_security_group" "db_sg" {
  name   = var.db_sg_name
  vpc_id = aws_vpc.two-tierVPC.id

  # Define inbound rules to allow incoming MySQL traffic from the ASG security group.
  ingress {
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [aws_security_group.asg_sg.id]
  }

  # Define inbound rules to allow incoming SSH traffic from the ASG security group.
  ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = [aws_security_group.asg_sg.id]
  }

  # Define outbound rules to allow all traffic from the security group.
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.db_sg_tag_name
  }
}
