resource "aws_instance" "instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.public_key.key_name

  network_interface {
    network_interface_id = aws_network_interface.defaultNIC.id
    device_index         = 0
  }

  tags = {
    project = "Example"
  }
}

resource "null_resource" "instance" {
  depends_on = [aws_eip.public_ip, aws_instance.instance]
  connection {
    #type        = "ssh"
    user        = "ubuntu"
    host        = aws_eip.public_ip.public_ip
    private_key = file("~/.ssh/id_rsa")
    agent       = "false"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get -y update && sudo apt-get -y upgrade",
      "sudo apt-get install -y nginx",
      "sudo systemctl start nginx",
    ]
    on_failure = continue
  }
}

