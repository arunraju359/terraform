resource "aws_default_subnet" "Public" {
  availability_zone = "us-west-2a"

  tags = {
    Name = "Public-Subnet-A"
  }
}