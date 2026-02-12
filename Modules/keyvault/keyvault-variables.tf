variable "keyvault_name" {
  type        = string
  description = "The name of the key vault"
 }

 variable "location" {
  type        = string
  description = "The location of the key vault"
}

variable "resource_group_name" {
  type = string
  description = "name of the resource group"
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
  type = string
  default = "standard"
  description = "value of the sku"
}

variable "role_definition_name" {
  type        = string
  default     = "Key Vault Secrets User"
  description = "The name of the role definition to assign to the principal"
}