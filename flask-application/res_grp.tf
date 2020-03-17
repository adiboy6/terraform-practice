# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "python-RG"
  location = "West US"
}