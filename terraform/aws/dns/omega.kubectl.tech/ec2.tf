resource "aws_instance" "bastion_instance" {
  ami           = "ami-0502e817a62226e03"
  instance_type = "t2.nano"
  associate_public_ip_address = true
  subnet_id = "subnet-3f905e65"
  vpc_security_group_ids = [aws_security_group.sg.id]
  key_name = aws_key_pair.ssh_key_pair.key_name

  tags = {
    Name = "${terraform.workspace}_bastion_instance"
  }
}

resource "aws_key_pair" "ssh_key_pair" {
  key_name   = "ssh_keypair"
  public_key =  file("~/.ssh/id_rsa.pub")
}
