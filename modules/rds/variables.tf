variable "aws_region" {
  default     = "ap-northeast-1"
  type        = string
  description = "AWS region"
}

variable "aws_prefer_az" {
  default     = "ap-northeast-1a"
  type        = string
  description = "AWS preferred availability zone"
}

variable "rds_instance_class" {
  type        = string
  description = "RDS instance class"
}

variable "mysql_engine_version" {
  type        = string
  description = "MySQL version"
}

variable "mysql_time_zone" {
  type        = string
  description = "MySQL time zone"
}

variable "subnet_id_1a" {
  type        = string
  description = "subnet id 1a"
}

variable "subnet_id_1c" {
  type        = string
  description = "subnet id 1c"
}

variable "security_group_id_rds_general" {
  type        = string
  description = "security group id rds general"
}
