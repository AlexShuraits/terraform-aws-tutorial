resource "aws_key_pair" "my_key" {
  key_name   = "${var.my_name}-key"
  public_key = file("~/.ssh/id_rsa.pub")
}
