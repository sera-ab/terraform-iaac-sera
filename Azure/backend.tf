terraform {
  backend "azurerm" {
    resource_group_name  = "example1"
    storage_account_name = "example1farrukh"
    container_name       = "tfstate"
    key                  = "prod_terraform.tfstate"
  }
}