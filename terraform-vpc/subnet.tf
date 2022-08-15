resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "172.32.1.0/24"

  tags = {
    Name = "Public-A"
  }
}

resource "aws_subnet" "main-private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "172.32.2.0/24"

  tags = {
    Name = "Private-A"
  }
}