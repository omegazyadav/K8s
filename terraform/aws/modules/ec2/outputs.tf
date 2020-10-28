output "public_subnet_id" {
  value = aws_subnet.example_subnet.id
}

output "vpc_id" {
  value = aws_vpc.example_vpc.id
}

output "cidr_block" {
  value = aws_subnet.example_subnet.cidr_block
}

