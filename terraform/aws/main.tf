# Configure the ec2 instance
module "example_ec2" {
  source = "./modules/ec2"

  ami                         = "ami-07efac79022b86107"
  instance_type               = "t2.micro"
  subnet_id                   = module.example_ec2.subnet_id
  associate_public_ip_address = "true"
}


module "example_db" {
  source = "./modules/rds"

  vpc_id          = module.example_ec2.example_vpc
  security_group  = module.example_ec2.example_sg
  private_subnet1 = module.example_ec2.private_subnet1
  private_subnet2 = module.example_ec2.private_subnet2

}

# Configure the output
output "ec2_details" {
  value = module.example_ec2
}
