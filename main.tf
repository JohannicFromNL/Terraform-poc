terraform {
 required_version = "1.2.3" 
 required_providers {
 azurerm = {
       source   = "hashicorp/azurerm"
    }
 }
}

provider "azurerm" {
  features{}
}

resource "azurerm_resource_group" "rg010" {
  name = "${var.subscription_shortname}rg010"
  location = "westeurope"

    tags = {
    "Environment" = "Development",
    "Creator"     = "Johannes Timisela",
    "Service"     = "Testinfrasturcture",
    "Application" = "test001",
    "Description" = "resourcegroep voor netwerkinfrastructuur",
    "Date"        = "2022-15-09",
    "dev_cicd"    = "false",
    "dev_lang"    = "terraform",
    "dev_script"  = "dev_resource_group.tf"
  }

}

Output "id" {
 value=data.azurerm_resource_group.rg010.id
}

