resource "aws_instance" "instance" {
  ami           = "ami-06e54d05255faf8f6"
  instance_type = "t2.micro"

  tags = {
    project = "Example"
  }
}
