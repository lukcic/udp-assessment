terraform {
  required_version = "~>1.10.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.21.1"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~>3.1.0"
    }
  }
}

provider "azurerm" {
  # resource_provider_registrations = "none"
  subscription_id = var.subscription_id == null ? "109460-${var.environment}-${var.subject_area}" : var.subscription_id
  features {}
  client_id     = var.client_id
  client_secret = var.client_secret
  tenant_id     = var.tenant_id
}
