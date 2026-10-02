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

module "queue_routing" {
  source = "../../modules/queue-routing"

  instance_arn            = module.connect_instance.instance_arn
  hours_of_operation_name = "Kaivalya Business Hours"
  time_zone               = "America/Toronto"
  queue_name              = "Kaivalya Customer Service"
}