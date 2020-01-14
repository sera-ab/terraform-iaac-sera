provider "azurerm" { 
} 
 

terraform { 
   required_version = ">= 0.12.18" 
} 



variable "prefix" {
   default = "tfvmex" 
} 