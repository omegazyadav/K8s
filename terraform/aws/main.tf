# Configure the ec2 instance
module "example_ec2" {
  source = "./modules/ec2"

  ami                         = "ami-07efac79022b86107"
  instance_type               = "t2.micro"
  subnet_id                   = module.example_ec2.public_subnet_id
  vpc_security_group_ids      = [module.example_ec2.security_group]
  associate_public_ip_address = true
}
