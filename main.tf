# Create the networking module for VPC and subnets.
module "networking" {
  source               = "./modules/networking"
  vpc_cidr             = "10.0.0.0/16"
  public_subnet1_cidr  = "10.0.1.0/24"
  public_subnet2_cidr  = "10.0.2.0/24"
  private_subnet1_cidr = "10.0.3.0/24"
  private_subnet2_cidr = "10.0.4.0/24"
  availability_zone_1  = "eu-west-2a"
  availability_zone_2  = "eu-west-2b"
  public_rt_cidr       = "0.0.0.0/0"
  private_rt_cidr      = "0.0.0.0/0"
}

# Create the load balancer module and pass required variables.
module "load_balancer" {
  source                = "./modules/load_balancer"
  alb_sg_id             = module.networking.alb_sg_id
  public_subnet1_id     = module.networking.public_subnet1_id
  public_subnet2_id     = module.networking.public_subnet2_id
  target_group_port     = 80
  target_group_protocol = "HTTP"
  vpc_id                = module.networking.vpc_id
  alb_listener_port     = 80
  alb_listener_protocol = "HTTP"
}

# Create the EC2 Auto Scaling module and pass required variables.
module "ec2_auto_scaling" {
  source            = "./modules/ec2_auto_scaling"
  asg_sg_id         = module.networking.asg_sg_id
  public_subnet1_id = module.networking.public_subnet1_id
  public_subnet2_id = module.networking.public_subnet2_id
  alb_tg_arn        = module.load_balancer.alb_tg_arn
}

# Create the database module for RDS instance and pass required variables.
module "database" {
  source               = "./modules/database"
  private_subnet1_id   = module.networking.private_subnet1_id
  private_subnet2_id   = module.networking.private_subnet2_id
  allocated_storage    = 5
  db_name              = "twotierdb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
