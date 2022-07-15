resource "aws_instance" "demo_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  iam_instance_profile = var.iam_instance_profile
}

