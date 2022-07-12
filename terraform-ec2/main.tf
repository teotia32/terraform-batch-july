resource "aws_instance" "demo_ec2" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  iam_instance_profile = "ec2_s3_read"
}

