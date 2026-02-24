resource "azurerm_subnet" "subnet" {
  for_each = { for i, name in var.subnet_name : name => var.subnet_prefixes[i] }

  name                 = each.key
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.Vnet.name
  address_prefixes     = [each.value]

  service_endpoints = ["Microsoft.Storage"]
}
