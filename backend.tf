terraform {
  backend "s3" {
    bucket         = "terraform-instance-bucket-date-2026"
    key            = "darshan/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-Lock-table"
  }
}
