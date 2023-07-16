
terraform {
  required_providers {
    vault  = {
        source = "hashicorp/vault"
        version = "3.18.0"
    }
    azurerm = {
        source = "hashicorp/azurerm"
        version = "3.65.0"
    }
  }
}


provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       =  var.tenant_id
  features {}
}


###### tags ####

locals {
  timestamp = formatdate("YYYY-MM-DD:HH-MM", timestamp())
  owner = "arvind"
  create_by = "terraform"
  purpose = "Demo for end-to-end Infrastructure and appication deployments using Hashicopr Vault"
  Environment = var.Environment
  terraform = "true"
}

locals {  
  common_tags  = {
        Owner        = local.owner
        Purpose      = local.purpose
        Environment  = local.Environment 
        Terraform    = local.terraform
       # Created_on   = local.timestamp

       }
    }


# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "${var.rg_name}-${var.prefix}"
  location = "${var.location}"
  tags = local.common_tags
}
