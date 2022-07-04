provider "aws"{
    region = "us-east-1"
}







resource "aws_instance" "sample" {
  ami                     = "ami-0022f774911c1d690"
  instance_type           = "t2.micro"
  count=                    var.condition-1 ? 1 : 0
  key_name          = "aws-devops-learn-22"
  count = 


  tags = {
    Name = "Test-Machine-${count.index + 1}"
  }
}
variable "condition-1"{
    default="false"
}

resource "aws_instance" "sample" {
  ami                     = "ami-0022f774911c1d690"
  instance_type           = "t2.micro"
  count=                    var.condition-2 ? 1 : 0
  key_name          = "aws-devops-learn-22"
  count = 


  tags = {
    Name = "Test-Machine-${count.index + 1}"
  }
}
variable "condition-2"{
    default="false"
}