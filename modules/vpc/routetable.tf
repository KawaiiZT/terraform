resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = var.default_route_cidr
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = merge(var.default_tags, { Name = var.pubrt_name })
}

resource "aws_route_table_association" "rt_pubsub" {
  for_each       = aws_subnet.public
  subnet_id      = each.value.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id
  tags   = merge(var.default_tags, { Name = var.prirt_name })
}

resource "aws_route_table_association" "rt_prisub" {
  for_each       = aws_subnet.private
  subnet_id      = each.value.id
  route_table_id = aws_route_table.private.id
}
