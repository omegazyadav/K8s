resource "aws_eip" "public_ip" {
  vpc        = true
  depends_on = [aws_internet_gateway.example_igw]
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.instance.id
  allocation_id = aws_eip.public_ip.id
}

