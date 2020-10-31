resource "aws_network_interface" "defaultNIC" {
  subnet_id = aws_subnet.example_subnet.id

  tags = {
    project    = "Collabnix"
    department = "Automation"
  }
}

