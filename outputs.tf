output "rds_endpoint" {
  description = "Endpoint público de la base de datos RDS"
  value       = aws_db_instance.reportes.endpoint
}

output "ec2_ip_publica" {
  description = "Dirección IP pública de la instancia EC2"
  value       = module.ec2.ec2_public_ip
}
