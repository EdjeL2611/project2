terraform {
  required_version = ">= 1.4.0"
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
  subscription_id = var.subscription_id
}

data "azurerm_resource_group" "projecttwee" {
  name = "project-twee"
}

data "azurerm_storage_account" "Projecttweesa" {
  name                = "projecttweesa"
  resource_group_name = data.azurerm_resource_group.projecttwee.name
}

data "azurerm_client_config" "current" {}




