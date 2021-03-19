# Terraform configuration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region     = "us-west-2"
}

resource "aws_iam_access_key" "lb" {
  user    = aws_iam_user.lb.name
  pgp_key = "keybase:omegazyadav"
}

resource "aws_iam_user_login_profile" "example" {
  user    = aws_iam_user.lb.name
  pgp_key = "keybase:omegazyadav"
  password_length = 10
  password_reset_required = false
}

resource "aws_iam_user" "lb" {
  name = "omega"
  path = "/system/"
}

resource "aws_iam_user_policy" "lb_ro" {
  name = "test"
  user = aws_iam_user.lb.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

output "secret" {
  value = aws_iam_access_key.lb.encrypted_secret
}

output "password" {
  value = aws_iam_user_login_profile.example.encrypted_password
}
