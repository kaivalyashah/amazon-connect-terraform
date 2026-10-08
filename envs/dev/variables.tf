variable "aws_region" {
  description = "AWS region for the Amazon Connect deployment"
  type        = string
  default     = "ca-central-1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "connect_instance_alias" {
  description = "Amazon Connect instance alias"
  type        = string
}

variable "connect_phone_country_code" {
  description = "Country code used when claiming the Connect phone number"
  type        = string
  default     = "CA"
}
variable "connect_admin_username" {
  description = "Amazon Connect administrator username"
  type        = string
}

variable "connect_admin_password" {
  description = "Amazon Connect administrator password"
  type        = string
  sensitive   = true
}

variable "connect_admin_first_name" {
  description = "Amazon Connect administrator first name"
  type        = string
}

variable "connect_admin_last_name" {
  description = "Amazon Connect administrator last name"
  type        = string
}

variable "connect_admin_email" {
  description = "Amazon Connect administrator email"
  type        = string
}