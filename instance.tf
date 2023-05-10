data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # AWS
  filter {
    name   = "name"
    values = ["ubuntu/images/*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}

resource "aws_instance" "instance" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.my_key.key_name
  associate_public_ip_address = true
  subnet_id = aws_subnet.subnet.id
  vpc_security_group_ids = [
    aws_security_group.ssh.id
  ]
  tags = {
    Name = "${var.my_name} instance"
  }
}

output "instance_ip" {
  value = aws_instance.instance.public_ip
}