resource "aws_db_option_group" "aws-rds-option-group-general-v80" {
  engine_name              = "mysql"
  major_engine_version     = "8.0"
  name                     = "aws-rds-option-group-general-v80"
  name_prefix              = null
  option_group_description = "option group general v80"
  tags                     = {}
  option {
    db_security_group_memberships  = []
    option_name                    = "MARIADB_AUDIT_PLUGIN"
    port                           = 0
    version                        = null
    vpc_security_group_memberships = []
  }
}