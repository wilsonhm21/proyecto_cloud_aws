variable "aws_region" {
  description = "Región de AWS"
  type        = string
  default     = "us-east-1"
}

variable "rds_user" {
  description = "Usuario de la base de datos"
  type        = string
}

variable "rds_pass" {
  description = "Contraseña de la base de datos"
  type        = string
  sensitive   = true
}

variable "rds_db" {
  description = "Nombre de la base de datos"
  type        = string
  default     = "reportes"
}

variable "ami_id" {
  description = "AMI para EC2 (Ubuntu, Amazon Linux, etc.)"
  type        = string
}

variable "key_name" {
  description = "Nombre del par de claves EC2"
  type        = string
}
