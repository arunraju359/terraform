resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main-demo.id

  tags = {
    Name = "${var.PROJECT_NAME}-${var.ENV}-igw"
  }
}

resource "aws_eip" "eip" {
  
  vpc      = true
}

resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public.*.id[1]

  tags = {
    Name = "${var.PROJECT_NAME}-${var.ENV}-natgw"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_eip.eip]
}