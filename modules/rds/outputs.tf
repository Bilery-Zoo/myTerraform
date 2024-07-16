output "Host" {
  value       = aws_db_instance.aws-rds-mysql-general.endpoint
  description = "RDS host"
}

output "User" {
  value       = aws_db_instance.aws-rds-mysql-general.username
  description = "RDS user"
}

output "Password" {
  value       = random_password.aws-rds-mysql-general-password.result
  description = "RDS Password"
}
