resource "aws_instance" "instance" {
  ami           = var.ami
  instance_type = var.instance_type

  network_interface {
    network_interface_id = aws_network_interface.defaultNIC.id
    device_index         = 0
  }

  tags = {
    project = "Example"
  }
}
