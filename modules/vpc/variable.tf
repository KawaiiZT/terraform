variable "vpc_cidr"             { type = string }
variable "public_subnet_cidrs"  { type = list(string) }
variable "private_subnet_cidrs" { type = list(string) }

variable "vpc_name"   { type = string }
variable "igw_name"   { type = string }
variable "pub1_name"  { type = string }
variable "pub2_name"  { type = string }
variable "pri1_name"  { type = string }
variable "pubrt_name" { type = string }
variable "prirt_name" { type = string }

variable "default_tags" { type = map(string) }
variable "default_route_cidr" {
  type    = string
  default = "0.0.0.0/0"
}
