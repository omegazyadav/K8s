# Security Group
resource "aws_security_group" "example_sg" {
  name        = "ExampleSG"
  description = "Allow ssh inbound traffic"
  vpc_id      = module.example_ec2.vpc_id

  ingress {
    description = "Allow SSH connection"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [module.example_ec2.cidr_block]
  }

  tags = {
    Name = "ExampleSG"
  }
}

# Configure the ec2 instance
module "example_ec2" {
  source = "./modules/ec2"

  ami                         = "ami-07efac79022b86107"
  instance_type               = "t2.micro"
  vpc_id                      = module.example_ec2.vpc_id
  subnet_id                   = module.example_ec2.public_subnet_id
  cidr_block                  = module.example_ec2.cidr_block
  vpc_security_group_ids      = [aws_security_group.example_sg.id]
  associate_public_ip_address = true
}
