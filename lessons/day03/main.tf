terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 5.5.0"
    }
  }
  required_version = ">=1.16.0"
}

provider "azurerm" {
    features {
      
    }
  
}

resource "azurerm_resource_group" "example" {
  name     = "rakeshRG"
  location = "westindia"
}

resource "azurerm_storage_account" "example" {
 
  name                     = "rakesh0sg"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location # implicit dependency
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "Dev"
  }
}