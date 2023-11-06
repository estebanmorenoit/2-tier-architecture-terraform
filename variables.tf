# Database Username Variable: Specify the username for the RDS database.
variable "db_username" {
  description = "The username for the RDS database"
  type        = string
}

# Database Password Variable: Specify the password for the RDS database.
variable "db_password" {
  description = "The password for the RDS database"
  type        = string
}
