terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.68.0"
    }
  }
#   backend "azurerm" {
# storage_account_name = "ravsastg"
# resource_group_name = "Ravi-RG"
# container_name = "stgcontainer"
# key = "dev.tfstate"

#   }
}
provider "azurerm" {
  features {}
  subscription_id = "9d4dc34f-c9aa-41db-a0d3-0592b42656db"
}
