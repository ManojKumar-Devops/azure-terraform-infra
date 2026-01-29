terraform {
  required_version = ">= 1.5.0"

  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstateazuredev123"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}
