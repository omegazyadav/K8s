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

# Confiugre the VPC
resource "aws_vpc" "example_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Example"
  }
}


# Configure the subent
resource "aws_subnet" "example_subnet" {
  vpc_id     = aws_vpc.example_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Example"
  }
}

## Security Group
resource "aws_security_group" "example_sg" {
  name        = "ExampleSG"
  description = "Allow ssh inbound traffic"
  vpc_id      = aws_vpc.example_vpc.id

  ingress {
    description = "Allow SSH connection"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [aws_subnet.example_subnet.cidr_block]
  }

  tags = {
    Name = "ExampleSG"
  }
}

# Configure the ec2 instance
module "example_ec2" {
  source = "./modules/ec2"

  ami                         = "ami-01fee56b22f308154"
  instance_type               = "t2.micro"
  vpc_id                      = aws_security_group.example_sg.id
  subnet_id                   = aws_subnet.example_subnet.id
  cidr_block                  = aws_subnet.example_subnet.cidr_block
  public_subnet               = aws_subnet.example_subnet.cidr_block
  vpc_security_group_ids      = [aws_security_group.example_sg.id]
  associate_public_ip_address = true
}

