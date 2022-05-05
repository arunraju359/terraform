resource "aws_instance" "sample" {
  ami                     = "ami-0022f774911c1d690"
  instance_type           = "t2.micro"


  tags = {
    Name = "My-First-Terraform"
  }
}
