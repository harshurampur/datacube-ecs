variable "cluster" {
  default = "datacube-wms"
}

variable "aws_region" {
  default = "ap-southeast-2"
}

variable "workspace" {
  default = "dev"
}

variable "owner" {
  default = "DEA"
}

# =============================
# Networking
variable "availability_zones" {
  type = "list"
  default = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]
}

variable "public_subnet_cidrs" {
  type = "list"
  default = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "private_subnet_cidrs" {
  default = ["10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]
}

variable "database_subnet_cidrs" {
  default = ["10.0.20.0/24", "10.0.21.0/24", "10.0.22.0/24"]
}

variable "ssh_ip_address" {
  type = "string"
  default = "127.0.0.1/32"
}

variable "key_name" {
  type = "string"
  default = ""
}

variable "enable_jumpbox" {
  default = true
}

variable "enable_nat" {
  default = false
}

variable "enable_gateways" {
  default = false
}

# ==================
# Containers
variable "container_port" {
  default = 80
}

# variable "container" {
#   type = "string"
#   default = "geoscienceaustralia/datacube-wms:latest"
#   description = "Docker container address. e.g. geoscienceaustralia/datacube:latest"
# }

# ==================
# Services and Tasks
variable "task_desired_count" {
  default = 1
}

variable "parameter_store_key_arn" {
  description = <<EOF
The ARN of the KMS key aliased "parameter_store_key"
to hide this prompt create an environment variable with the name:

TF_VAR_parameter_store_key_arn
EOF
}

# ==================
# database
variable "db_admin_password" {
  description = <<EOF
The password for our database, 
to hide this prompt create an environment variable with the name:

TF_VAR_db_admin_password
  EOF
}

variable "db_admin_username" {
  type = "string"
  description = "admin username for RDS instance"
  default = "master"
}

variable "db_dns_name" {
  type = "string"
  default = "local"
}

variable "db_zone" {
  type = "string"
  default = "database"
}

variable "db_name" {
  type = "string"
  default = "datacube"
  description = "name of first database in RDS"
}
