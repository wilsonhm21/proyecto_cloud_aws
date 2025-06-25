provider "aws" {
  region = var.aws_region
}

module "s3" {
  source = "git::https://github.com/wilsonhm21/aws_s3.git"
}

module "lambda" {
  source             = "git::https://github.com/wilsonhm21/aws_lambda.git"
  input_bucket_name  = module.s3.input_bucket
  output_bucket_name = module.s3.output_bucket
  rds_host           = aws_db_instance.reportes.endpoint
  rds_user           = var.rds_user
  rds_pass           = var.rds_pass
  rds_db             = var.rds_db
  lambda_zip_path    = abspath("${path.root}/lambda.zip")
}

module "ec2" {
  source             = "git::https://github.com/wilsonhm21/aws_ec2.git"
  ami_id             = var.ami_id
  key_name           = var.key_name
  output_bucket_name = module.s3.output_bucket
  rds_host           = aws_db_instance.reportes.endpoint
  rds_user           = var.rds_user
  rds_pass           = var.rds_pass
  rds_db             = var.rds_db
}

