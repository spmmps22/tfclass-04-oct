provider "aws" {
  region = "us-east-1"
}

# Create S3 bucket -1
resource "aws_s3_bucket" "example" {
  bucket = "my-buckettest-terraform-63837ytfv5678fhj5522surya041025-${terraform.workspace}" 
  acl    = "private"

  tags = {
    Name        = "MyBucket-${terraform.workspace}"
    Environment = terraform.workspace
  }
}
