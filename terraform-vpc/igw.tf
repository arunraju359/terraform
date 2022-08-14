resource "aws_internet_gateway_attachment" "example" {
  internet_gateway_id = aws_internet_gateway.example.id
  vpc_id              = aws_vpc.main.id
}
resource "aws_vpc" "main" {
  cidr_block = "172.32.0.0/16"
}

resource "aws_internet_gateway" "example" {}
