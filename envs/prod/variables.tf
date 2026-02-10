variable "resource_group_name" {
  type        = string
  description = "name of the resource group"
}
variable "location" {
  type        = string
  description = "location of resource"
  default     = "westeurope"
}

variable "subscription_id" {
  type        = string
  description = "subscription id of resource"
}

variable "vnet_name" {
  type        = string
  description = "name of the vnet"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "address space of the vnet"
  default     = ["10.0.0.0/16"]
}

variable "subnet_prefixes" {
  type        = list(string)
  description = "address prefixes for the subnet"
  default     = ["10.0.1.0/24"]
}

variable "subnet_name" {
  type        = list(string)
  description = "name of the subnet"
}

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

variable "dns_zone_name" {
  type        = string
  description = "name of the dsn zone"
}

variable "dns_link_name" {
  type        = string
  description = "name of the dns virtual network link"
}

variable "private_endpoint_name" {
  type        = string
  description = "The name of the private endpoint."
}

variable "private_service_connection_name" {
  type        = string
  description = "The name of the private service connection."
}

variable "keyvault_name" {
  type        = string
  description = "The name of the key vault"
}


variable "disk_encryption" {
  type        = bool
  default     = true
  description = "Enable for disk encryption"
}

variable "soft_delete_retention_days" {
  type        = number
  default     = 7
  description = "Number of days to retain deleted key vaults"
}

variable "purge_protection_enabled" {
  type        = bool
  default     = false
  description = "Enable purge protection for the key vault"
}

variable "sku_name" {
  type        = string
  default     = "standard"
  description = "value of the sku"
}

variable "role_definition_name" {
  type        = string
  default     = "Key Vault Secrets User"
  description = "The name of the role definition to assign to the principal"
}