resource "random_password" "aws-rds-mysql-general-password" {
  length  = 16
  special = false
}