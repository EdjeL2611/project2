resource "azurerm_virtual_network" "Vnet" {
    name                = var.vnet_name
    address_space       = var.vnet_address_space
    location            = azurerm_resource_group
    resource_group_name = azurerm_resource_group.projecttwee.name
    
}