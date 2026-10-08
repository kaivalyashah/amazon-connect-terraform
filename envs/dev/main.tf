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
  routing_profile_name    = "Kaivalya Customer Service Profile"
}

module "security_profile" {
  source = "../../modules/security-profile"

  instance_arn          = module.connect_instance.instance_arn
  security_profile_name = "Kaivalya Connect Admin"
}

module "connect_user" {
  source = "../../modules/connect-user"

  instance_arn         = module.connect_instance.instance_arn
  username             = var.connect_admin_username
  password             = var.connect_admin_password
  routing_profile_arn  = module.queue_routing.routing_profile_arn
  security_profile_arn = module.security_profile.security_profile_arn

  first_name  = var.connect_admin_first_name
  last_name   = var.connect_admin_last_name
  email       = var.connect_admin_email
  environment = var.environment
}