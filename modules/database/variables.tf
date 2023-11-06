# Name for the RDS (Relational Database Service) subnet group.
variable "db_subnet_name" {
  default = "two-tier-db-subnet-group"
  type    = string
}

# ID of the first private subnet for the RDS database.
variable "private_subnet1_id" {}

# ID of the second private subnet for the RDS database.
variable "private_subnet2_id" {}

# Amount of storage allocated for the RDS instance.
variable "allocated_storage" {
  type = number
}

# Name of the RDS database.
variable "db_name" {}

# Database engine (e.g., MySQL, PostgreSQL, etc.).
variable "engine" {}

# Version of the database engine.
variable "engine_version" {
  type = number
}

# Instance class for the RDS database.
variable "instance_class" {}

# Username for accessing the RDS database.
variable "username" {}

# Password for accessing the RDS database.
variable "password" {}

# Name of the parameter group for the RDS instance.
variable "parameter_group_name" {}

# Indicates whether to skip the final snapshot when deleting the RDS instance.
variable "skip_final_snapshot" {
  type = bool
}
