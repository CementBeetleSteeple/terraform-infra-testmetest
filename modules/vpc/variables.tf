variable "name" { type = string }
variable "cidr" { type = string }
variable "private_cidrs" { type = list(string); default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"] }
variable "public_cidrs" { type = list(string); default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"] }
