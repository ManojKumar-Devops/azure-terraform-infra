terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg1"
    storage_account_name = "tfstatestorage1"
    container_name       = "tfstate1"
    key                  = "dev.terraform.tfstate"
  }
}
