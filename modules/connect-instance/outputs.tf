output "instance_id" {
  description = "Amazon Connect instance ID"
  value       = awscc_connect_instance.this.instance_id
}

output "instance_arn" {
  description = "Amazon Connect instance ARN"
  value       = awscc_connect_instance.this.arn
}

output "instance_alias" {
  description = "Amazon Connect instance alias"
  value       = awscc_connect_instance.this.instance_alias
}