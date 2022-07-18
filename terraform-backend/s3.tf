resource "aws_s3_bucket" "demo_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "demo-bucket"
    Environment = "Dev"
  }
}

