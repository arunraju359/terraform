provider "aws"{
    region = "us-east-1"
}







resource "aws_instance" "sample" {
  ami                     = "ami-0022f774911c1d690"
  instance_type           = "t2.micro"
  
  key_name          = "aws-devops-learn-22"
  count = 2


  tags = {
    Name = "Test-Machine-${count.index}"
  }
}