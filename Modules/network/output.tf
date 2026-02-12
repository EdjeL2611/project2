output "subnet_ids" {
  value = [for s in azurerm_subnet.subnet : s.id]
}

output "subnet_names" {
  value = [for s in azurerm_subnet.subnet : s.name]
}

 output "virtual_network_id" {
  value = azurerm_virtual_network.Vnet.id
   
 }