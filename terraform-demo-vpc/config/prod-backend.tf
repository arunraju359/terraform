terraform {
  backend "s3" {
    bucket = "my-bucket-for-tf-state"
    key    = "student/vpc/prod/terraform.tfstate"
    region = "ap-south-1"
  }
}