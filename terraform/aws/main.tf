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
  access_key = "YOUR_ACCESS_KEY"
  secret_key = "YOUR_SECRET_KEY"
}

# Configure the VPC
module "example_vpc" {
  source = "./modules/vpc"
}

# Configure the ec2 instance
module "example_ec2" {
  source        = "./modules/ec2"
  public_subnet = module.example_vpc.public_subnet_id
}

