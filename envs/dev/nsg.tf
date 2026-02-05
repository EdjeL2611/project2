module "nsg" {
  source = "../../modules/nsg"

  nsg_name      = var.nsg_name
  security_rule = var.security_rule

  resource_group_name = data.azurerm_resource_group.projecttwee.name
  location            = var.location
}   