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

variable "ec2_prefer_ami" {
  default     = "ami-0a0b7b240264a48d7"
  type        = string
  description = "EC2 prefer AMI"
}

variable "ec2_instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "subnet_id" {
  type        = string
  description = "subnet id"
}

variable "security_group_id_general" {
  type        = string
  description = "security group id general"
}
