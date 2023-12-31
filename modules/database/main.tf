# Create an RDS (Relational Database Service) subnet group for the database.
resource "aws_db_subnet_group" "db_subnet" {
  name       = var.db_subnet_name
  subnet_ids = [var.private_subnet1_id, var.private_subnet2_id]
}

# Launch an RDS database instance within the specified subnet group.
resource "aws_db_instance" "db_instance" {
  allocated_storage    = var.allocated_storage
  db_name              = var.db_name
  db_subnet_group_name = var.db_subnet_name
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot  = var.skip_final_snapshot

  # Ensure that the RDS instance creation depends on the DB subnet group.
  depends_on = [aws_db_subnet_group.db_subnet]
}
