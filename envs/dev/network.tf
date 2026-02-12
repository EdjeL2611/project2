module "network" {
  source = "../../modules/network"

  vnet_address_space = var.vnet_address_space
  vnet_name          = var.vnet_name
  subnet_name        = var.subnet_name
  subnet_prefixes    = var.subnet_prefixes

  resource_group_name = data.azurerm_resource_group.projecttwee.name
  location            = var.location

}