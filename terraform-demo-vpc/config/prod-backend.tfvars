terraform {
  backend "s3" {
    bucket = "my-bucket-for-tf-state-prod"
    key    = "student/vpc/prod/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table  = "terraform-lock"
  }
}