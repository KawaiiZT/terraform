variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_session_token" {}
variable "key_name" {}
variable "region" { default = "us-east-1" }

# Networking
variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.101.0/24"]
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
variable "azs" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}
variable "public_newbits" {
  type    = number
  default = 8
}

variable "private_newbits" {
  type    = number
  default = 8
}

# Instances
variable "instance_count" { default = 2 }
variable "instance_type" { default = "t2.micro" }

# Database
variable "db_name" {
  type    = string
  default = "testdb"
}
variable "db_engine" {
  type    = string
  default = "mysql"
}
variable "db_engine_version" {
  type    = string
  default = "8.0"
}
variable "db_instance_class" {
  type    = string
  default = "db.t3.micro"
}
variable "db_allocated_storage" {
  type    = number
  default = 20
}
variable "db_username" {
  type    = string
  default = "admin"
}
variable "parameter_group_name" {
  type    = string
  default = "default.mysql8.0"
}