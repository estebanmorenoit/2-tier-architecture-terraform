# Output the ID of the RDS (Relational Database Service) subnet group.
output "db_subnet_group_id" {
  value = aws_db_subnet_group.db_subnet.id
}

# Output the ARN (Amazon Resource Name) of the RDS subnet group.
output "db_subnet_group_arn" {
  value = aws_db_subnet_group.db_subnet.arn
}

# Output the ID of the RDS database instance.
output "db_instance_id" {
  value = aws_db_instance.db_instance.id
}

# Output the name of the RDS database.
output "db_instance_name" {
  value = aws_db_instance.db_instance.db_name
}
