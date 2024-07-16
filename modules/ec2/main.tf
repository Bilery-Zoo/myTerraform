resource "aws_key_pair" "aws-ec2-key-general" {
  key_name   = "aws-ec2-key-general"
  public_key = var.my_public_key
  tags = {
    "Service"      = "EC2"
    "Distribution" = "Ubuntu"
    "Environment"  = "POC"
  }
}

resource "aws_instance" "aws-ec2-general" {
  ami                                  = var.ec2_prefer_ami
  associate_public_ip_address          = true
  availability_zone                    = var.aws_prefer_az
  disable_api_stop                     = false
  disable_api_termination              = false
  ebs_optimized                        = false
  get_password_data                    = false
  hibernation                          = false
  host_id                              = null
  iam_instance_profile                 = null
  instance_initiated_shutdown_behavior = "stop"
  instance_lifecycle                   = null
  instance_type                        = var.ec2_instance_type
  key_name                             = aws_key_pair.aws-ec2-key-general.key_name
  monitoring                           = false
  outpost_arn                          = null
  password_data                        = null
  placement_group                      = null
  placement_partition_number           = 0
  public_dns                           = null
  secondary_private_ips                = []
  security_groups                      = []
  source_dest_check                    = true
  spot_instance_request_id             = null
  subnet_id                            = var.subnet_id
  tags = {
    "Name"         = "aws-ec2-general"
    "Service"      = "EC2"
    "Distribution" = "AL"
    "Environment"  = "POC"
  }
  tenancy = "default"
  vpc_security_group_ids = [
    var.security_group_id_general
  ]
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }
  cpu_options {
    amd_sev_snp = null
  }
  credit_specification {
    cpu_credits = "standard"
  }
  enclave_options {
    enabled = false
  }
  maintenance_options {
    auto_recovery = "default"
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }
  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 3000
    kms_key_id            = null
    tags                  = {}
    throughput            = 125
    volume_size           = 20
    volume_type           = "gp3"
  }
}
