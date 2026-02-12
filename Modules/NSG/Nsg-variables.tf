variable "nsg_name" {
    type        = string
    description = "The name of the Network Security Group"
}

variable "security_rule" {
    description = "List of security rules to be applied to the NSG"
    type = list(object({
        name                       = string
        priority                   = number
        direction                  = string
        access                     = string
        protocol                   = string
        source_port_range          = string
        destination_port_range     = string
        source_address_prefix      = string
        destination_address_prefix = string
    }))
    default = []
  
}

variable "resource_group_name" {
    type = string
    description = "name of the resource group"
}

variable "location" {
  type = string
  description = "location of the resource group"
  default = "westeurope"
}