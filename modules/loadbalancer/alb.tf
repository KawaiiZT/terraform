resource "aws_lb" "app" {
  name               = replace(var.lb_name, "_", "-")
  load_balancer_type = "application"
  security_groups    = [var.elb_sg_id]
  subnets            = var.public_subnet_ids
  tags               = merge(var.default_tags, { Name = var.lb_name })
}
