
variable "Environment" {
 type = string
 default = "test"
 description = "Application Environmet Name line Dev.Test,QA,UAT"  
}

variable "subscription_id" {
    type = string 
    description = "Azure subscription ID"  
}

variable "client_id" {
    description = "Azure client_id"
    type = string  
}

variable "client_secret" {
    type = string
    description = "Azure client secret"  
}
variable "tenant_id" {
    type = string 
    description = "Azure Tenet ID"
  
}

variable "prefix" {
    description = "This prefix will be used in most of resources"
    default = "demo"
}

variable "location" {
    type = string
    description = "Resources location, In whih region you want to create the resources"
    default = "CentralIndia"
}

variable "rg_name" {
     type = string 
     description = "Variable for resource Group"
}


# variable "VAULT_ADDR" {
#   type = string
#   description = "Proovide the address of the vault server"
# }

# variable "VAULT_TOKEN" {
#   type = string
#   sensitive = true
#   description = "Vault token to authenticate  vault server"
# }


