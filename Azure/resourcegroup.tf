resource "azurerm_resource_group" "main" { 
   name = "${var.prefix}-resources" 
  location = "West US 2" 
} 