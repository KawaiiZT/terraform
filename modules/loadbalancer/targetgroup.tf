resource "aws_lb_target_group" "tg" {
  name        = replace(var.tg_name, "_", "-")
  port        = 80
  protocol    = "HTTP"
  target_type = "instance"
  vpc_id      = var.vpc_id

  health_check {
    protocol = "HTTP"
    path     = var.hc_path
    matcher  = var.hc_matcher
  }

  tags = merge(var.default_tags, { Name = var.tg_name })
}

resource "aws_lb_target_group_attachment" "instances" {
  for_each         = toset(var.instance_ids)
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = each.key
  port             = 80
}
