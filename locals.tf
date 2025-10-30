locals {
  name_prefix  = "prompt"
  default_name = "${local.name_prefix}69"

  vpc_tags      = "${local.default_name}-VPC"
  igw_tags      = "${local.default_name}-testIGW"
  pubsub1       = "${local.default_name}-publicsubnet1"
  pubsub2       = "${local.default_name}-publicsubnet2"
  prisub1       = "${local.default_name}-privatesubnet1"
  pubtable      = "${local.default_name}-publicRouteTable"
  pritable      = "${local.default_name}-privateRouteTable"
  elb_tags      = "${local.default_name}-elb-SG"
  secgroup      = "${local.default_name}-instance-SG"
  appload       = "${local.default_name}-web-loadbalancer"
  target        = "${local.default_name}-tgp"
  listener      = "${local.default_name}-listener"
  instance_tags = "${local.default_name}-servers"

  default_tags = {
    label   = "itkmitl-motto"
    itkmitl = "prompt"
  }
}
