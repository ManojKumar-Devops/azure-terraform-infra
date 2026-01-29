terraform {
  required_version = ">= 1.5.0"
}

provider "azurerm" {
  features {}
}

# -----------------------------
# Resource Group for TF State
# -----------------------------
resource "azurerm_resource_group" "tfstate" {
  name     = "tfstate-rg"
  location = "East US"
}

# -----------------------------
# Storage Account for TF State
# -----------------------------
resource "azurerm_storage_account" "tfstate" {
  name                     = "tfstateazuredev123" # must be globally unique
  resource_group_name      = azurerm_resource_group.tfstate.name
  location                 = azurerm_resource_group.tfstate.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  min_tls_version          = "TLS1_2"
  allow_blob_public_access = false
}

# -----------------------------
# Blob Container for State
# -----------------------------
resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}
