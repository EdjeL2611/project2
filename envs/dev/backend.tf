terraform {
  backend "azurerm" {
    resource_group_name  = "project-twee"
    storage_account_name = "projecttweesa"
    container_name       = "container-dev"
    key                  = "dev.terraform.tfstate"

  }
}