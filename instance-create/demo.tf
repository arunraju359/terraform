// resource "aws_instance" "web" {
//The aws_instance.web resource block defines an aws_instance resource named web to create an AWS EC2 instance.
//The arguments inside the aws_instance.web resource block specify what type of resource to create.

resource "aws_instance" "sample" {
  ami                     = "ami-0022f774911c1d690"
  instance_type           = "t2.micro"
  security_groups         = "aws_security_group.allow_ssh"


  tags = {
    Name = "Test-Machine"
  }
}
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh_tf"
  description = "Allow ssh inbound traffic"
  

  ingress {
    description      = "ssh from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}
