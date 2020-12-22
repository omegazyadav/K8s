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
  region     = "us-east-2"
  #access_key = "YOUR_ACCESS_KEY"
  #secret_key = "YOUR_SECRET_KEY"
  shared_credentials_file = "/home/omega/.aws/credentials"
  profile                 = "yadav"
}

