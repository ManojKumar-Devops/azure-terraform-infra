terraform {
  backend "azurerm" {
    resource_group_name  = "kk-playground-rg"
    storage_account_name = "tfplaygroundstate123"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}
