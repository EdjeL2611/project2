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

resource "azurerm_private_dns_zone" "dns_zone" {
  name                = var.dns_zone_name
  resource_group_name = azurerm_resource_group.projecttwee.name
}

resource "azurerm_private_dns_zone_virtual_network_link" "dns-link" {
  name                  = var.dns_link_name
  resource_group_name   = azurerm_resource_group.projecttwee.name
  private_dns_zone_name = azurerm_private_dns_zone.dns_zone.name
  virtual_network_id = module.network.virtual_network_id
  registration_enabled  = false
}

resource "azurerm_storage_account_network_rules" "projecttweesa_network_rules" {
storage_account_id = data.azurerm_storage_account.Projecttweesa.id

  default_action             = "Deny"  
  virtual_network_subnet_ids = [module.network.subnet_ids[0]]  
  bypass                     = ["AzureServices"]  
}
