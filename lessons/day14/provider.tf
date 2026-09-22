# Configure the Azure provider, you can have many
# if you use azurerm provider, it's source is hashicorp/azurerm
# short for registry.terraform.io/hashicorp/azurerm


terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 5.6.0, < 6.0.0"
    }
  }

  required_version = ">= 1.16.3, < 2.0.0"
}
# configures the provider

provider "azurerm" {
  features {}
}
