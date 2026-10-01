terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.62"
    }

    awscc = {
      source  = "hashicorp/awscc"
      version = "~> 1.98"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "Amazon Connect Terraform"
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  }
}

provider "awscc" {
  region = var.aws_region
}