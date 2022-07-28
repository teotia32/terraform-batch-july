resource "aws_instance" "demo_ec2" {
  #count =  var.create_ec2 ? 1 : 0 # count = condition ? true : false
  ami           = data.aws_ami.latest_ec2_linux.id
  instance_type = var.instance_type
  iam_instance_profile = var.iam_instance_profile
}

data "aws_ami" "latest_ec2_linux" {
  name_regex = "amzn2-ami-kernel-5.10-hvm*"
  most_recent      = true
  owners           = ["amazon"]
}



resource "aws_iam_role" "ec2_role" {
  name = "ec2_depends-demo-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
  tags = {
    tag-key = "tag-value"
  }
}
