provider "aws" {
  region  = "ap-northeast-2"
  profile = "freetier"
}

# S3 bucket for Terraform state
resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-state-example1"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}

# Terraform state Lock 저장을 위한 DynamoDB
resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock-example1"
  hash_key       = "LockID"
  read_capacity  = 2
  write_capacity = 2

  attribute {
    name = "LockID"
    type = "S"
  }
}
