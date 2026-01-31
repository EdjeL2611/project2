  resource "azurerm_network_security_rule" "NSG_Rules" {
  for_each = { for r in var.security_rule : r.name => r }
  

    name                       = each.value.name
    priority                   = each.value.priority
    direction                  = each.value.direction
    access                     = each.value.access
    protocol                   = each.value.protocol
    source_port_range          = each.value.source_port_range
    destination_port_range     = each.value.destination_port_range
    source_address_prefix      = each.value.source_address_prefix
    destination_address_prefix = each.value.destination_address_prefix

    network_security_group_name = azurerm_network_security_group.NSG.name
    resource_group_name        = azurerm_network_security_group.NSG.resource_group_name
  }