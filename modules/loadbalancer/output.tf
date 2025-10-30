output "lb_arn"       { value = aws_lb.app.arn }
output "lb_dns_name"  { value = aws_lb.app.dns_name }
output "tg_arn"       { value = aws_lb_target_group.tg.arn }
output "listener_arn" { value = aws_lb_listener.http.arn }
