resource "aws_instance" "servers" {
  count         = var.instance_count
  ami           = data.aws_ami.amzn_linux_2023.id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.instance_sg.id]

  tags = merge(local.default_tags, {
    Name = local.instance_tags
  })
}
