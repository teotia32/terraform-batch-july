terraform {
  backend "s3" {
    bucket = "" # Update s3 buckey
    key = "terraform/terraform-count/terraform.tfstate"    # Add the key for tfstate
    region = "us-east-1"
  }
}