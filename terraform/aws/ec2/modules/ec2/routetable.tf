resource "aws_route_table" "public" {
  vpc_id = aws_vpc.example_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.example_igw.id
  }

  tags = {
    Name = "Example"
  }
}

resource "aws_main_route_table_association" "main_route" {
  vpc_id         = aws_vpc.example_vpc.id
  route_table_id = aws_route_table.public.id
}

