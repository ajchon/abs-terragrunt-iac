provider "azurerm" {
  version = "=1.39.0"
}

terraform {
  backend "azurerm" {}
}

remote_state {
  backend = "azurerm" 
  config = {
    key = "${path_relative_to_include()}/terraform.tfstate"
    resource_group_name = "ABSDemo"
    storage_account_name = "absdemostorageacc"
    container_name = "tfstate"
  }
}
