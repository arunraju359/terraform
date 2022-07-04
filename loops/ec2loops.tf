resource "aws_instance" "sample" {
  ami                     = "ami-0022f774911c1d690"
  instance_type           = "t2.micro"
  vpc_security_group_ids       = [aws_security_group.allow_ssh.id]
  key_name          = "aws-devops-learn-22"
  count = 2


  tags = {
    Name = "Test-Machine-${count.index}"
  }
}