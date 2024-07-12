# root terraform block
terraform {
  required_providers {
    aws = {
      version = ">= 5.56.1"
      source  = "hashicorp/aws"
    }
  }
}

# root provider block
locals {
  aws_profile_folder = "/home/dba/.aws"
}
provider "aws" {
  alias                    = "dba"
  region                   = var.aws_region
  shared_config_files      = ["${local.aws_profile_folder}/config"]
  shared_credentials_files = ["${local.aws_profile_folder}/credentials"]
  profile                  = "aws_dba_role"
}
