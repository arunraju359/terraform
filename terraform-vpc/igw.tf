resource "aws_internet_gateway_attachment" "example" {
  
  vpc_id              = aws_vpc.main.id
}

resource "aws_vpc" "example" {
  cidr_block = "172.32.0.0/16"
}

resource "aws_internet_gateway" "example" {}