terraform {
  backend "azurerm" {
    resource_group_name  = "example1"
    storage_account_name = "cs2e9e15a87aadex4ea8xa28"
    container_name       = "tfstate"
    key                  = "prod_terraform.tfstate"
    access_key           = ""
  }
}