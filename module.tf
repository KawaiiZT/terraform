module "vpc" {
  source               = "./modules/vpc"
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  vpc_name             = local.vpc_tags
  igw_name             = local.igw_tags
  pub1_name            = local.pubsub1
  pub2_name            = local.pubsub2
  pri1_name            = local.prisub1
  pubrt_name           = local.pubtable
  prirt_name           = local.pritable
  default_tags         = local.default_tags
}
module "alb" {
  source            = "./modules/loadbalancer"
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  elb_sg_id         = aws_security_group.elb_sg.id
  instance_ids      = aws_instance.servers[*].id

  lb_name       = local.appload
  tg_name       = local.target
  listener_name = local.listener
  default_tags  = local.default_tags
}
