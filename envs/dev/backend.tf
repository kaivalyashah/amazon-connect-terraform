terraform {
  backend "s3" {
    bucket         = "kaivalya-connect-terraform-state-2026"
    key            = "dev/terraform.tfstate"
    region         = "ca-central-1"
    dynamodb_table = "kaivalya-connect-terraform-lock"
    encrypt        = true
  }
}