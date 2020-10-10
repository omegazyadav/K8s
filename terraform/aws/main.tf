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
  region                  = "us-west-2"
  shared_credentials_file = "/home/omega/.aws/credentials"
  profile                 = "yadav"
}

# Create a VPC
resource "aws_vpc" "omega" {
  cidr_block = "10.0.0.0/16"
}

# Create a ec2 instance 
resource "aws_instance" "example" {
  ami           = "ami-06e54d05255faf8f6"
  instance_type = "t2.micro"
}

