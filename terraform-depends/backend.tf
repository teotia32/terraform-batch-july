terraform {
  backend "s3" {
    bucket = "" # Update s3 buckey
    key = ""    # Add the key for tfstate
    region = "us-east-1"
  }
}