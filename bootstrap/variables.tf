variable "aws_region" {
  description = "AWS region where bootstrap resources will be created"
  type        = string
  default     = "ca-central-1"
}

variable "state_bucket_name" {
  description = "Globally unique S3 bucket name for Terraform state"
  type        = string
}