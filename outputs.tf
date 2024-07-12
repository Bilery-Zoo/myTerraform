output "Host" {
  value       = nonsensitive(module.rds.Host)
  description = "RDS host"
}

output "User" {
  value       = nonsensitive(module.rds.User)
  description = "RDS user"
}

output "Password" {
  value       = nonsensitive(module.rds.Password)
  description = "RDS Password"
}
