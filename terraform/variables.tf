variable "location" {
<<<<<<< HEAD
  default = "uksouth"
=======
  default = "westus2"
>>>>>>> 425cb08 ("need to change Terraform file")
}

variable "resource_group_name" {
  default = "manoj-rg-terraform-demo"
}

variable "vm_admin_username" {
  default = "manoj-azureuser"
}

variable "vm_size" {
  default = "Standard_D2s_v3"  # more general-purpose, high availability
}

