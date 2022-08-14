resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "172.30.1.0/24"

  tags = {
    Name = "Public-A"
  }
}