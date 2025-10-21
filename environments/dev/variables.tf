variable "subscription_id" {
  type        = string
  description = "The subscription ID for the Azure provider."
  sensitive   = true
}

variable "client_secret" {

  type        = string
  description = "The client secret for the Azure provider."
  sensitive   = true
}

variable "tenant_id" {

  type        = string
  description = "The tenant ID for the Azure provider."
  sensitive   = true
}

variable "location" {

  type        = string
  description = "The location for the Azure resource group."
  default     = "East US"
}
