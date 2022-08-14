provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "my-bucket-for-tf-state"
    key    = "terraform/vpc/terraform.tfstate"
    region = "ap-south-1"
  }
}
