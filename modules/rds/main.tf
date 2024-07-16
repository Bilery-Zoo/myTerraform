resource "aws_db_instance" "aws-rds-mysql-general" {
  identifier                            = "aws-rds-mysql-general"
  allocated_storage                     = 20
  auto_minor_version_upgrade            = false
  availability_zone                     = var.aws_prefer_az
  backup_retention_period               = 0
  backup_target                         = "region"
  backup_window                         = "16:28-16:58"
  ca_cert_identifier                    = "rds-ca-rsa2048-g1"
  character_set_name                    = null
  copy_tags_to_snapshot                 = true
  custom_iam_instance_profile           = null
  customer_owned_ip_enabled             = false
  db_name                               = null
  db_subnet_group_name                  = aws_db_subnet_group.aws-rds-subnet-group-general.name
  dedicated_log_volume                  = false
  delete_automated_backups              = true
  deletion_protection                   = false
  apply_immediately                     = true
  domain                                = null
  domain_auth_secret_arn                = null
  domain_fqdn                           = null
  domain_iam_role_name                  = null
  domain_ou                             = null
  enabled_cloudwatch_logs_exports       = []
  engine                                = "mysql"
  engine_version                        = var.mysql_engine_version
  iam_database_authentication_enabled   = false
  identifier_prefix                     = null
  instance_class                        = var.rds_instance_class
  kms_key_id                            = null
  latest_restorable_time                = null
  license_model                         = "general-public-license"
  maintenance_window                    = "thu:15:55-thu:16:25"
  max_allocated_storage                 = 0
  monitoring_interval                   = 0
  monitoring_role_arn                   = null
  multi_az                              = false
  nchar_character_set_name              = null
  network_type                          = "IPV4"
  option_group_name                     = aws_db_option_group.aws-rds-mysql-option-group-general-v80.name
  parameter_group_name                  = aws_db_parameter_group.aws-rds-mysql-parameter-group-general-v80.name
  performance_insights_enabled          = false
  performance_insights_kms_key_id       = null
  performance_insights_retention_period = 0
  port                                  = 3306
  publicly_accessible                   = false
  replica_mode                          = null
  replicate_source_db                   = null
  skip_final_snapshot                   = true
  storage_encrypted                     = false
  storage_type                          = "gp3"
  tags = {
    "Service"       = "RDS"
    "Engine"        = "MySQL"
    "Environment"   = "POC"
    "Major_version" = "8.0"
  }
  timezone               = null
  username               = "admin"
  password               = random_password.aws-rds-mysql-general-password.result
  vpc_security_group_ids = [var.security_group_id_rds_general]
}
