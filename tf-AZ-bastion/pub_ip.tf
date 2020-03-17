# Create public IP
resource "azurerm_public_ip" "publicip" {
  name                = "TFPublicIP"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Static"
}