provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "terraform_instance" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    subnet_id = var.subnet_id
  tags = {
    Name = var.tag
  }
}

resource "aws_s3_bucket" "terraform_instance_bucket" {
    bucket = "terraform-instance-bucket-date-2026"
}

resource "aws_dynamodb_table" "terraform_lock" {
    name = "terraform-Lock-table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
  
}