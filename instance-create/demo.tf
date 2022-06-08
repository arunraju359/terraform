// resource "aws_instance" "web" {
//The aws_instance.web resource block defines an aws_instance resource named web to create an AWS EC2 instance.
//The arguments inside the aws_instance.web resource block specify what type of resource to create.

resource "aws_instance" "sample" {
  ami                     = "ami-0022f774911c1d690"
  instance_type           = "t2.micro"


  tags = {
    Name = "My-First-Terraform"
  }
}
