variable "name" { type = string }
variable "environment" { type = string }
variable "instance_class" { type = string; default = "db.t3.medium" }
variable "storage_gb" { type = number; default = 20 }
variable "database_name" { type = string; default = "appdb" }
variable "username" { type = string; default = "dbadmin" }
