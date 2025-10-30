# Public 1
resource "aws_subnet" "public" {
  for_each = {
    pub1 = { cidr = var.public_subnet_cidrs[0], name = var.pub1_name, az = "us-east-1a" }
    pub2 = { cidr = var.public_subnet_cidrs[1], name = var.pub2_name, az = "us-east-1b" }
  }

  vpc_id                  = aws_vpc.main.id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  tags = merge(var.default_tags, { Name = each.value.name })
}

# Private 1
resource "aws_subnet" "private" {
  for_each = {
    pri1 = { cidr = var.private_subnet_cidrs[0], name = var.pri1_name, az = "us-east-1a" }
  }

  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value.cidr
  availability_zone = each.value.az

  tags = merge(var.default_tags, { Name = each.value.name })
}
