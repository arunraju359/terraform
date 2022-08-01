resource "aws_instance" "example" {
  ami           = "ami-08df646e18b182346"
  instance_type = "t2.micro"
  key_name = "newKeyMumbai"
  tags = {
    Name = "Test-Machine"
  }

  security_groups = ["${aws_security_group.allow_rdp.name}"]

}