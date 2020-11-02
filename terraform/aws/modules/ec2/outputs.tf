output "subnet_id" {
  value = aws_subnet.example_subnet.id
}

output "public_ip" {
  value = aws_eip.public_ip.public_ip
}

