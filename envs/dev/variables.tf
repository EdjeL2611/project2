variable "location" {
    type = string
    description = "location of resource"
    default = "westeurope"
}

variable "subscription_id" {
    type = string
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