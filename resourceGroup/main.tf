provider "azurerm" {
  version = "=1.39.0"
}

terraform {
  backend "azurerm" {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    environment = "abs demo"
  }
}