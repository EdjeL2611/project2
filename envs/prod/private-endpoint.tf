module "private-endpoint" {
  source = "../../modules/private-endpoint"

  resource_group_name             = var.resource_group_name
  location                        = var.location
  private_endpoint_name           = var.private_endpoint_name
  private_service_connection_name = var.private_service_connection_name
  private_connection_resource_id  = data.azurerm_storage_account.Projecttweesa.id
  private_dns_zone_ids            = [azurerm_private_dns_zone.dns_zone.id]

  subnet_ids = module.network.subnet_ids
}