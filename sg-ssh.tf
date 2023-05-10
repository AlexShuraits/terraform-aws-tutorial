resource "aws_security_group" "ssh" {
  vpc_id = aws_vpc.vpc.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.vpn_addresses
  }
  tags = {
    Name = "${var.my_name}-ssh-security-group"
  }
}