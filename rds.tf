resource "aws_db_instance" "reportes" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = var.rds_user
  password             = var.rds_pass
  skip_final_snapshot  = true
  publicly_accessible  = true
  parameter_group_name = "default.mysql8.0"
}
