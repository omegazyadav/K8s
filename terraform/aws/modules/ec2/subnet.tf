# Confiugre the VPC
resource "aws_vpc" "example_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Example"
  }
}


# Configure the public subent
resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.example_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Public"
  }
}

# Configure the private subnet 
resource "aws_subnet" "private_subnet1" {
  vpc_id     = aws_vpc.example_vpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "Private1"
  }
}

# Configure the private subnet 
resource "aws_subnet" "private_subnet2" {
  vpc_id     = aws_vpc.example_vpc.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "Private2"
  }
}
