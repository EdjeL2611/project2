terraform {
  required_version = ">= 1.4.0"
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id

}

resource "azurerm_resource_group" "projecttwee" {
  name     = "project-twee"
  location = "westeurope"
}

data "azurerm_storage_account" "Projecttweesa" {
  name                = "projecttweesa"
  resource_group_name = "project-twee"
}