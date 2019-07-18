resource "aws_rds_cluster" "postgresql" {
  cluster_identifier                  = "microservice-cluster-demo"
  engine                              = "aurora"
  availability_zones                  = ["us-west-2a", "us-west-2b", "us-west-3b"]
  database_name                       = "${var.rds_database_name}"
  master_username                     = "foo"
  master_password                     = "bar"
  backup_retention_period             = "${var.rds_backup_retention_period}"
  preferred_backup_window             = "${var.rds_preferred_backup_window}"
  deletion_protection                 = "${var.rds_deletion_protection}"
  port                                = "${var.rds_port}"
  #vpc_security_group_ids              = ["${var.rds_vpc_security_group_ids}"]
  storage_encrypted                   = true
  iam_database_authentication_enabled = true
  engine_mode                         = "serverless"
  enabled_cloudwatch_logs_exports     = ["audit"]
  scaling_configuration {
    auto_pause               = true
    max_capacity             = 1
    min_capacity             = 1
    seconds_until_auto_pause = 300
  }
}







