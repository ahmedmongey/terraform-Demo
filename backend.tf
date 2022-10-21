terraform {
  backend "s3" {
    bucket = "mongey-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "test-table"
  }
}