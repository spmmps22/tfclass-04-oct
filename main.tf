provider "aws" {
  region = "us-east-1"
}

# Create S3 bucket -1
resource "aws_s3_bucket" "example" {
  bucket = "my-s3-bucket-${terraform.workspace}" 
  acl    = "private"

  tags = {
    Name        = "my-bucketdoubletest-terraform-6389354552237ytfv5678fhj-${terraform.workspace}"
    Environment = terraform.workspace

}
}
