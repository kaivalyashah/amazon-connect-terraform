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
