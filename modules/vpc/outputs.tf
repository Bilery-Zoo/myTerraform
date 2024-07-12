output "subnet-general-id" {
  value       = aws_subnet.aws-subnet-general.id
  description = "subnet public id"
  sensitive   = true
}

output "subnet-rds-1a-id" {
  value       = aws_subnet.aws-subnet-rds-1a.id
  description = "subnet rds 1a id"
  sensitive   = true
}

output "subnet-rds-1c-id" {
  value       = aws_subnet.aws-subnet-rds-1c.id
  description = "subnet rds 1c id"
  sensitive   = true
}

output "aws-security-group-general-id" {
  value       = aws_security_group.aws-security-group-general.id
  description = "security group general id"
  sensitive   = true
}

output "aws-security-group-rds-general-id" {
  value       = aws_security_group.aws-security-group-rds-general.id
  description = "security group rds general id"
  sensitive   = true
}
