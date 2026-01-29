variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "location" {
  default = "East US"
}

variable "resource_group_name" {
  default = "azure-terraform"
}

variable "ssh_public_key" {
  description = "Path to SSH public key"
  default     = "~/.ssh/id_rsa.pub"
}
