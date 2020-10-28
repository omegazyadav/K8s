# Security Group
resource "aws_security_group" "example_sg" {
  name        = "ExampleSG"
  description = "Allow ssh inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow SSH connection"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.cidr_block]
  }

  tags = { 
    Name = "ExampleSG"
  }
}
