# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "vm-cluster"
  location = "West US 2"
}