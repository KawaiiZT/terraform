resource "aws_db_instance" "default" {
  allocated_storage           = var.db_allocated_storage
  db_name                     = var.db_name
  engine                      = var.db_engine
  engine_version              = var.db_engine_version
  instance_class              = var.db_instance_class
  username                    = var.db_username
  manage_master_user_password = true
  parameter_group_name        = var.parameter_group_name
  skip_final_snapshot         = true
  deletion_protection         = false

  tags = {
    Name = local.db_tags
  }
}
