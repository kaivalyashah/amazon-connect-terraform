module "connect_instance" {
  source = "../../modules/connect-instance"

  identity_management_type = "CONNECT_MANAGED"
  instance_alias           = var.connect_instance_alias
  environment              = var.environment

  inbound_calls_enabled     = true
  outbound_calls_enabled    = true
  contact_lens_enabled      = true
  contact_flow_logs_enabled = true
}