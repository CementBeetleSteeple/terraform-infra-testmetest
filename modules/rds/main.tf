resource "aws_db_instance" "postgres" {
  identifier                  = var.name
  engine                      = "postgres"
  engine_version              = "16.1"
  instance_class              = var.instance_class
  allocated_storage           = var.storage_gb
  storage_encrypted           = true
  db_name                     = var.database_name
  username                    = var.username
  manage_master_user_password = true
  multi_az                    = var.environment == "prod"
  skip_final_snapshot         = var.environment != "prod"
  deletion_protection         = var.environment == "prod"
  backup_retention_period     = var.environment == "prod" ? 7 : 1
}
