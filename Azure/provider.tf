
provider "azurerm" { 
   version = "1.27" 
} 


resource "azurerm_resource_group" "web_server_rg" { 
  name = "web-rg" 
  location = "westus2" 
} 


resource "azurerm_virtual_network" "vnet1" { 
  name = "vnet1" 
  location = "westus2" 
  resource_group_name = "${azurerm_resource_group.web_server_rg.name}" 
  address_space = ["10.0.0.0/16"] 
} 

 
 resource "azurerm_subnet" "private" { 
  name = "private" 
  resource_group_name = "${azurerm_resource_group.web_server_rg.name}" 
  virtual_network_name = "${azurerm_virtual_network.vnet1.name}" 
  address_prefix = "10.0.1.0/24" 

} 