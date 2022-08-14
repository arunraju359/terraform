resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main-gw"
  }
}

resource "aws_internet_gateway_attachment" "gw" {
  internet_gateway_id = aws_internet_gateway.gw.id
  vpc_id              = aws_vpc.main.id
}

resource "aws_vpc" "example" {
  cidr_block = "172.32.0.0/16"
}

resource "aws_internet_gateway" "example" {}