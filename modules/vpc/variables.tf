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
