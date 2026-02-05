module "nsg" {
    source             = "../../modules/nsg"

    name   = var.nsg_name
    resource_group_name = data.azurerm_resource_group.projecttwee.name
    location = data.azurerm_resource_group.projecttwee.location

security_rules = var.security_rule
}