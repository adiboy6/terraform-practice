resource "azurerm_storage_account" "example" {
  name                     = "sample123"
  resource_group_name      = "storage_adi_sample"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}