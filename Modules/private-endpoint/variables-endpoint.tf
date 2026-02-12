variable "private_endpoint_name" {
  type        = string
  description = "The name of the private endpoint."
  }

variable "location" {
  type        = string
  description = "The location of the private endpoint."
  default = "westeurope"
}

variable "resource_group_name" {
  type = string
  description = "name of the resource group"
}


variable "private_service_connection_name" {
  type        = string
  description = "The name of the private service connection."
  }

variable "private_connection_resource_id" {
  type        = string
  description = "The ID of the resource to which the private endpoint will connect."
  }

  variable "private_dns_zone_ids" {
    type = list(string)
    description = "The list of private DNS zone IDs to associate with the private endpoint."
  }

  variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs where the private endpoint can be placed"
}

