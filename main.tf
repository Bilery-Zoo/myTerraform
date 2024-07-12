module "vpc" {
  providers = {
    aws = aws.dba
  }
  source           = "./modules/vpc"
  aws_prefer_az    = var.aws_prefer_az
  aws_secondary_az = var.aws_secondary_az
}

module "ec2" {
  providers = {
    aws = aws.dba
  }
  source                    = "./modules/ec2"
  aws_prefer_az             = var.aws_prefer_az
  ec2_prefer_ami            = var.ec2_prefer_ami
  ec2_instance_type         = var.ec2_instance_type
  subnet_id                 = module.vpc.subnet-general-id
  security_group_id_general = module.vpc.aws-security-group-general-id
}

module "rds" {
  providers = {
    aws = aws.dba
  }
  source                        = "./modules/rds"
  aws_prefer_az                 = var.aws_prefer_az
  rds_instance_class            = var.rds_instance_class
  mysql_engine_version          = var.mysql_engine_version
  mysql_time_zone               = var.mysql_time_zone
  subnet_id_1a                  = module.vpc.subnet-rds-1a-id
  subnet_id_1c                  = module.vpc.subnet-rds-1c-id
  security_group_id_rds_general = module.vpc.aws-security-group-rds-general-id
}
