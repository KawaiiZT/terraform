resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.app.arn
  port     = 80
  protocol = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg.arn
  }

  tags = merge(var.default_tags, { Name = var.listener_name })
}
