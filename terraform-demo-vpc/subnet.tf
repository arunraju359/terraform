resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main-demo.id
  count      = length(var.PRIVATE_SUBNET_CIDR) 

  cidr_block = element(var.PRIVATE_SUBNET_CIDR, count.index)

  tags = {
    Name = "${var.PROJECT_NAME}-${var.ENV}-private-subnet-${count.index+1}"
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main-demo.id
  count      = length(var.PUBLIC_SUBNET_CIDR) 

  cidr_block = element(var.PUBLIC_SUBNET_CIDR, count.index)

  tags = {
    Name = "${var.PROJECT_NAME}-${var.ENV}-public-subnet-${count.index+1}"
  }
}