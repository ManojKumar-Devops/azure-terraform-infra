# Terraform Azure CI/CD Pipeline

This repository demonstrates a complete Terraform CI/CD pipeline for Azure
using Azure DevOps and GitHub Actions.

## Architecture
- Azure Resource Group
- Virtual Network
- Subnet
- Network Security Group
- Terraform Remote State (Azure Blob)

## Authentication
Uses Azure Service Principal with environment variables.

## Pipeline Flow
1. Terraform Init
2. Terraform Validate
3. Terraform Plan
4. Terraform Apply

## Cost Safety
No VMs used. Fully compatible with Azure Developer Plan.

## How to Run
```bash
terraform init
terraform plan
terraform apply
