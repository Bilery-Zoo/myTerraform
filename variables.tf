variable "my_public_key" {
  type        = string
  description = "My public key"
}

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

variable "aws_secondary_az" {
  default     = "ap-northeast-1c"
  type        = string
  description = "AWS secondary availability zone"
}

variable "ec2_prefer_ami" {
  default     = "ami-0a0b7b240264a48d7"
  type        = string
  description = "EC2 prefer AMI"
}

variable "ec2_instance_type" {
  type        = string
  description = "EC2 instance type"
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
