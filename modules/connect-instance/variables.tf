variable "identity_management_type" {
  description = "Amazon Connect identity management type"
  type        = string
  default     = "CONNECT_MANAGED"
}

variable "instance_alias" {
  description = "Amazon Connect instance alias"
  type        = string
}

variable "inbound_calls_enabled" {
  description = "Enable inbound calling"
  type        = bool
  default     = true
}

variable "outbound_calls_enabled" {
  description = "Enable outbound calling"
  type        = bool
  default     = true
}

variable "contact_lens_enabled" {
  description = "Enable Contact Lens"
  type        = bool
  default     = true
}

variable "contact_flow_logs_enabled" {
  description = "Enable contact flow logs"
  type        = bool
  default     = true
}

variable "environment" {
  description = "Environment name"
  type        = string
}