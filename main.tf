module "networking" {
  source = "./modules/networking"
}

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

module "ec2_auto_scaling" {
  source            = "./modules/ec2_auto_scaling"
  asg_sg_id         = module.networking.asg_sg_id
  public_subnet1_id = module.networking.public_subnet1_id
  public_subnet2_id = module.networking.public_subnet2_id
  alb_tg_arn        = module.load_balancer.alb_tg_arn
}

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