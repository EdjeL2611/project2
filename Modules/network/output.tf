output "azurerm_virtual_network_id" {
    value = azurerm_virtual_network.Vnet.id
    description = "The ID of the Virtual Network"
}

output "azurerm_virtual_network_name" {
    value = azurerm_virtual_network.Vnet.name
    description = "The name of the Virtual Network"
}

output "azurerm_subnet_id" {    
    value = azurerm_subnet.subnet.id
    description = "The ID of the Subnet"
}

output "azurerm_subnet_name" {    
    value = azurerm_subnet.subnet.name
    description = "The name of the Subnet" 
}