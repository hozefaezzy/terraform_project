# Set secrets (programmatic access keys as environment variables instead of hardcoding)
# setx ARM_CLIENT_ID "XXXX-client-id-XXXX"
# setx ARM_CLIENT_SECRET "XXXX-client-secret-XXXX"
# setx ARM_SUBSCRIPTION_ID "XXXX-subscription-id-XXXX"
# setx ARM_TENANT_ID "XXXX-tenant-id-XXXX"

# Cloud Provider = Azure

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "terraform-state-rg"
    storage_account_name = "terraformtfstatefiles"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "92ce78f8-6db3-4a60-9fa7-3e9d8179e33e"
}