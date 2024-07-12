resource "aws_db_subnet_group" "aws-rds-subnet-group-general" {
  description = "subnet group of AWS RDS for MySQL general"
  name        = "aws-rds-subnet-group-general"
  name_prefix = null
  subnet_ids = [
    var.subnet_id_1a,
    var.subnet_id_1c
  ]
  tags = {}
}