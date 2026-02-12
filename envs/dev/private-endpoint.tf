resource "azurerm_private_dns_zone" "dns_zone" {
  name                = var.dns_zone_name
  resource_group_name = data.azurerm_resource_group.projecttwee.name
}

resource "azurerm_private_dns_zone_virtual_network_link" "dns-link" {
  name                  = var.dns_link_name
  resource_group_name   = data.azurerm_resource_group.projecttwee.name
  private_dns_zone_name = azurerm_private_dns_zone.dns_zone.name
  virtual_network_id    = module.network.virtual_network_id
  registration_enabled  = false
}

module "private-endpoint" {
  source = "${path.root}../../modules/private-endpoint"

  resource_group_name             = var.resource_group_name
  location                        = var.location
  private_endpoint_name           = var.private_endpoint_name
  private_service_connection_name = var.private_service_connection_name
  private_connection_resource_id  = data.azurerm_storage_account.Projecttweesa.id
  private_dns_zone_ids            = [azurerm_private_dns_zone.dns_zone.id]

  subnet_ids = module.network.subnet_ids
}