# Configure the Microsoft Azure Provider
provider "azurerm" {
  source  = "hashicorp/azurerm"
  version = "=3.0.0"
  features {}
}


terraform {
  
  backend "azurerm" {
    resource_group_name  = "StorageRG"
    storage_account_name = "pathologyazuretf"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  } 
    
}


resource "azurerm_resource_group" "rg-hello-azure" {
  name     = "rg-hello-azure"
  location = "northcentralus"
}

