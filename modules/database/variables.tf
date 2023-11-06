variable "db_subnet_name" {
  default = "two-tier-db-subnet-group"
  type    = string
}

variable "private_subnet1_id" {}
variable "private_subnet2_id" {}

variable "allocated_storage" {
  type = number
}
variable "db_name" {}
variable "engine" {}

variable "engine_version" {
  type = number
}

variable "instance_class" {}
variable "username" {}
variable "password" {}
variable "parameter_group_name" {}

variable "skip_final_snapshot" {
  type = bool
}