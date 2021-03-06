provider "aws" {
    region="us-east-1"
}

terraform {
  backend "s3" {
    bucket = "mybucket-for-state"
    key    = "dev/tform/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "TF_Lock"
  }
}