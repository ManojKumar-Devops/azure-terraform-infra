provider "azurerm" {
  features {}

  subscription_id = "azurekmlprod"
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  use_oidc        = true
}
