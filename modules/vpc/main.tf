resource "aws_vpc" "aws-vpc-general" {
  assign_generated_ipv6_cidr_block     = false
  cidr_block                           = "24.0.0.0/24"
  enable_dns_hostnames                 = false
  enable_dns_support                   = true
  enable_network_address_usage_metrics = false
  instance_tenancy                     = "default"
  ipv6_association_id                  = null
  ipv6_cidr_block                      = null
  ipv6_cidr_block_network_border_group = null
  ipv6_ipam_pool_id                    = null
  tags = {
    "Name" = "aws-vpc-general"
  }
}

resource "aws_subnet" "aws-subnet-general" {
  vpc_id                                         = aws_vpc.aws-vpc-general.id
  assign_ipv6_address_on_creation                = false
  availability_zone                              = var.aws_prefer_az
  cidr_block                                     = "24.0.0.64/26"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_cidr_block_association_id                 = null
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    "Name" = "aws-subnet-general"
  }
}

resource "aws_subnet" "aws-subnet-rds-1a" {
  vpc_id                                         = aws_vpc.aws-vpc-general.id
  assign_ipv6_address_on_creation                = false
  availability_zone                              = var.aws_prefer_az
  cidr_block                                     = "24.0.0.128/26"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_cidr_block_association_id                 = null
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    "Name" = "aws-subnet-rds-1a"
  }
}

resource "aws_subnet" "aws-subnet-rds-1c" {
  vpc_id                                         = aws_vpc.aws-vpc-general.id
  assign_ipv6_address_on_creation                = false
  availability_zone                              = var.aws_secondary_az
  cidr_block                                     = "24.0.0.192/26"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_cidr_block_association_id                 = null
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    "Name" = "aws-subnet-rds-1c"
  }
}

resource "aws_security_group" "aws-security-group-general" {
  name        = "aws-security-group-general"
  description = "security group general"
  vpc_id      = aws_vpc.aws-vpc-general.id
  egress = [
    {
      cidr_blocks = [
        "0.0.0.0/0",
      ]
      description      = "allow all"
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    },
  ]
  ingress = [
    {
      cidr_blocks = [
        "0.0.0.0/0",
      ]
      description      = "allow ssh"
      from_port        = 22
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups  = []
      self             = false
      to_port          = 22
    },
  ]
  name_prefix = null
  tags = {
    "Inbound"  = "ssh"
    "Outbound" = "All"
    "Service"  = "RDS"
  }
}

resource "aws_security_group" "aws-security-group-rds-general" {
  name        = "aws-security-group-rds-general"
  description = "security group for AWS RDS general"
  vpc_id      = aws_vpc.aws-vpc-general.id
  egress = [
    {
      cidr_blocks = [
        "0.0.0.0/0",
      ]
      description      = "allow all"
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    },
  ]
  ingress = [
    {
      cidr_blocks      = []
      description      = "allow security group general"
      from_port        = 3306
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups  = [aws_security_group.aws-security-group-general.id]
      self             = false
      to_port          = 3306
    },
  ]
  name_prefix = null
  tags = {
    "Inbound"  = "security group general"
    "Outbound" = "All"
    "Service"  = "RDS"
  }
}

resource "aws_internet_gateway" "aws-internet-gateway-general" {
  vpc_id = aws_vpc.aws-vpc-general.id
  tags = {
    "Name" = "aws-internet-gateway-general"
  }
}

resource "aws_route_table" "aws-route-table-general" {
  vpc_id           = aws_vpc.aws-vpc-general.id
  propagating_vgws = []
  route = [
    {
      carrier_gateway_id         = null
      cidr_block                 = "0.0.0.0/0"
      core_network_arn           = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      gateway_id                 = aws_internet_gateway.aws-internet-gateway-general.id
      ipv6_cidr_block            = null
      local_gateway_id           = null
      nat_gateway_id             = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
    },
    {
      carrier_gateway_id         = null
      cidr_block                 = "24.0.0.0/24"
      core_network_arn           = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      gateway_id                 = "local"
      ipv6_cidr_block            = null
      local_gateway_id           = null
      nat_gateway_id             = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
    },
  ]
  tags = {
    "Name" = "aws-route-table-general"
  }
}
