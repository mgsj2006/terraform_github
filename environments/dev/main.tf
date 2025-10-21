terraform {
  required_providers {
    azurerm = {

      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  required_version = "1.9"
}

provider "azurerm" {

  features {}
  subscription_id = var.subscription_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

resource "azurerm_resource_group" "rg" {
  name     = local.resource_group_name
  location = var.location
  tags     = local.tags
  lifecycle {
    prevent_destroy = true
  }
}
