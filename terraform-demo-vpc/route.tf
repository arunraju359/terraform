resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main-demo.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
   tags = {
    Name = "${var.PROJECT_NAME}-${var.ENV}-public-rt"
  }
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main-demo.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.natgw.id
  }
   tags = {
    Name = "${var.PROJECT_NAME}-${var.ENV}-private-rt"
  }
}