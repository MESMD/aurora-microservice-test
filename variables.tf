variable "rds_engine" {
  description = "engine type"
  default     = "aurora"
}

#variable "rds_vpc_security_group_ids" {
#}

variable "rds_database_name" {
  description = "name of the database"
  default     = "PATS_Test"
}

variable "rds_backup_retention_period" {
  description = "number of days to hold backups"
  default     = 1
}

variable "rds_preferred_backup_window" {
  description = "description"
  default     = "07:00-09:00"
}

variable "rds_deletion_protection" {
  description = "description"
  default     = false
}

variable "rds_port" {
  description = "Port database connects to"
  default     = "5432"
}