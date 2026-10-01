resource "awscc_connect_instance" "this" {
  identity_management_type = var.identity_management_type
  instance_alias           = var.instance_alias

  attributes = {
    inbound_calls    = var.inbound_calls_enabled
    outbound_calls   = var.outbound_calls_enabled
    contact_lens     = var.contact_lens_enabled
    contactflow_logs = var.contact_flow_logs_enabled
  }

  tags = [
    {
      key   = "Name"
      value = var.instance_alias
    },
    {
      key   = "Environment"
      value = var.environment
    },
    {
      key   = "ManagedBy"
      value = "Terraform"
    }
  ]
}

