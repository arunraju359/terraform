provider "aws" {
    region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "my-bucket-for-tf-state"
    key    = "dev/ec2/terraform.tfstate"
    region = "us-east-1"
  }
}