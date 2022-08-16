resource "aws_vpc" "main-demo" {
  cidr_block       = var.VPC_CIDR
  

  tags = {
    Name = "${var.PROJECT_NAME}-${var.ENV}-vpc"
  }
}