resource "aws_key_pair" "public_key" {
  key_name   = "omega"
  public_key = file("~/.ssh/id_rsa.pub")
}
