resource "aws_instance" "web" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_SSH.id]
  key_name ="aws-devops-learn-22"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "allow_SSH" {
  name        = "allow_SSH"
  description = "Allow SSH inbound traffic"
  

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_SSH"
  }
}