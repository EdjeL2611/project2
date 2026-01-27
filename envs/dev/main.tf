terraform {
  required_version = ">= 1.4.0"
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

data "azurerm_resource_group" "projecttwee" {
  name = "project-twee"
}

data "azurerm_storage_account" "Projecttweesa" {
  name                = "projecttweesa"
  resource_group_name = data.azurerm_resource_group.projecttwee.name
}