resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.public_ip2.id
  subnet_id     = aws_subnet.private_subnet1.id

  tags = {
    NAME = "NAT_GATEWAY"
  }
  depends_on = [aws_internet_gateway.example_igw]
}
