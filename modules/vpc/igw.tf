resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
  tags   = merge(var.default_tags, { Name = var.igw_name })
}
