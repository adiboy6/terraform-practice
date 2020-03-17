terraform {
  backend "azurerm" {
    resource_group_name  = "storage_adi_sample"
    storage_account_name = "tfstatebackendstorage"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}