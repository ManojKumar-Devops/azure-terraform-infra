provider "azurerm" {
  features {}
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                = "vm-${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = "Standard_B1s"        # Allowed SKU in playground
  admin_username      = "azureuser"
  admin_password      = "P@ssw0rd1234!"       # Playground allows simple testing
  network_interface_ids = []                  # Add existing NIC if required

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"    # Allowed
    disk_size_gb         = 30                # ≤128GB
  }
}
