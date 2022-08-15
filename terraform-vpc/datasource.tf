data "aws_vpc" "default" {
  id = var.DEFAULT_VPC_ID
}

output "def_vpc_data" {
  value       = data.aws_vpc.default
}

data "aws_route_table" "def_vpc_routetable" {
  vpc_id = var.DEFAULT_VPC_ID
}

output "def_vpc_routetable" {
  value       = data.aws_route_table.def_vpc_routetable
}

output "def_vpc_data_cidr" {
  value       = data.aws_vpc.default.cidr_block
}
