resource "aws_network_interface" "defaultNIC" {
  subnet_id = aws_subnet.example_subnet.id

  tags = {
    Name = "Example"
  }
}

resource "aws_network_interface_sg_attachment" "sg_attachment" {
  security_group_id    = aws_security_group.example_sg.id
  network_interface_id = aws_instance.instance.primary_network_interface_id
}
