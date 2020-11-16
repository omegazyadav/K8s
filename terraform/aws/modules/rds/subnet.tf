resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = [var.private_subnet1, var.private_subnet2]

  tags = {
    Name = "DB subnet group"
  }
}
