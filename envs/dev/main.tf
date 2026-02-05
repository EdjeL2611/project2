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

resource "azurerm_private_dns_zone" "dns_zone" {
  name                = var.dns_zone_name
  resource_group_name = data.azurerm_resource_group.projecttwee.name
}

resource "azurerm_private_dns_zone_virtual_network_link" "dns-link" {
  name                  = var.dns_link_name
  resource_group_name   = data.azurerm_resource_group.projecttwee.name
  private_dns_zone_name = azurerm_private_dns_zone.dns_zone.name
  virtual_network_id = module.network.virtual_network_id
  registration_enabled  = false
}