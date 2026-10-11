terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.75.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "admin_rg"
    storage_account_name = "pipelinetfstate"
    container_name       = "xyzcontainer"
    key                  = "prod.tfstate"
  }
}


provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "fd" {
  name     = "rishichandra"
  location = "east us"
  tags = {
    owner = "bikraam"
  }
}

resource "azurerm_resource_group" "dg" {
  name     = "rishi5chandra"
  location = "east us"
  tags = {
    owner = "bikrama1"
  }
}

resource "azurerm_resource_group" "rahul" {
  name     = "rahulsingh"
  location = "east us"
  tags = {
    owner = "bikram"
  }
}