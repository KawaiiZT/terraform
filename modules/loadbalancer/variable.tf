variable "vpc_id"             { type = string }
variable "public_subnet_ids"  { type = list(string) }
variable "elb_sg_id"          { type = string }
variable "instance_ids"       { type = list(string) }

variable "lb_name"            { type = string }
variable "tg_name"            { type = string }
variable "listener_name"      { type = string }
variable "default_tags"       { type = map(string) }

variable "hc_path"    { 
    type = string 
    default = "/" 
    }
variable "hc_matcher" { 
    type = string 
    default = "200-399" 
    }
