resource "aws_internet_gateway_attachment" "example" {
  
  vpc_id              = aws_vpc.main.id
}

