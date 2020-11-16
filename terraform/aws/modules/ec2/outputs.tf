output "subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "public_ip" {
  value = aws_eip.public_ip.public_ip
}

output "example_vpc" {
  value = aws_vpc.example_vpc.id
}

output "private_subnet1" {
  value = aws_subnet.private_subnet1.id
}

output "private_subnet2" {
  value = aws_subnet.private_subnet2.id
}

output "example_sg" {
  value = aws_security_group.example_sg.name
}
