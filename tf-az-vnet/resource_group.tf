# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "vnet_tf_rg"
  location = "westus2"
}