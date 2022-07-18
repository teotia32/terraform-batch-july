output "iam_role_arn" {
  value = aws_iam_role.ec2_role.arn
}

output "iam_role_create_date" {
  value = aws_iam_role.ec2_role.create_date
}