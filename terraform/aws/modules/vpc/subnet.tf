resource "aws_subnet" "publicsubnet" {
  vpc_id     = aws_vpc.example_vpc.id
  cidr_block = var.public_subnet_cidr

  tags = {
    project = "Example"
  }
}
