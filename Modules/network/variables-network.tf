variable "vnet_name" {
  type = string
  description = "name of the vnet"
}

variable "vnet_address_space" {
    type = list(string)
    description = "address space of the vnet"       
    default = ["10.0.0.0/16"]
  }

 