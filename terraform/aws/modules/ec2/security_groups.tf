# Security Group
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

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ExampleSG"
  }
}
