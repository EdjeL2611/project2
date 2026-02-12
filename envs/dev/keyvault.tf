module "keyvault" {
  source = "../../modules/keyvault"

  keyvault_name              = var.keyvault_name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  disk_encryption            = var.disk_encryption
  soft_delete_retention_days = var.soft_delete_retention_days
  purge_protection_enabled   = var.purge_protection_enabled
  sku_name                   = var.sku_name

}

resource "azurerm_role_assignment" "keyvault-role" {
  scope                = module.keyvault.key_vault_id
  principal_id         = data.azurerm_client_config.current.object_id
  role_definition_name = var.role_definition_name
}


