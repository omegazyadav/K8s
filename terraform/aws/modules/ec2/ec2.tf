resource "aws_instance" "instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.public_key.key_name

  network_interface {
    network_interface_id = aws_network_interface.defaultNIC.id
    device_index         = 0
  }

  provisioner "remote-exec" {
    inline = [
      "apt-get -y update && apt-get -y upgrade",
      "apt-get install -y nginx",
      "systemctl start nginx"
    ]

    connection {
      type        = "ssh"
      user        = "ubuntu"
      host        = aws_eip.public_ip.public_ip
      agent       = false
      private_key = file("~/.ssh/id_rsa")
    }
  }

  tags = {
    project = "Example"
  }
}
