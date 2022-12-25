# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  
  backend "azurerm" {
    resource_group_name  = "StorageRG"
    storage_account_name = "pathologyazuretf"
    container_name       = "terraformstate"
    key                  = "terraform.tfstate"
  } 

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }

    
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg-hello-azure" {
  name     = "rg-hello-azure"
  location = "northcentralus"
}

