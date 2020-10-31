output "public_subnet_id" {
  value = aws_subnet.example_subnet.id
}

output "security_group" {
  value = aws_security_group.example_sg.id
}

