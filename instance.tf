resource "aws_instance" "servers" {
  count         = var.instance_count
  ami           = data.aws_ami.amzn_linux_2023.id
  instance_type = var.instance_type
  key_name      = var.key_name

  subnet_id                   = local.public_subnet_ids[count.index == 0 ? 0 : 1]
  vpc_security_group_ids      = [aws_security_group.instance_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "${local.instance_tags}"
  }
}
