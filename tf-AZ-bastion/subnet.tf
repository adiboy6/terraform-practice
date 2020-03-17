# Create subnet
resource "azurerm_subnet" "subnet" {
  name                 = "tfsubnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefix       = "192.168.1.224/27"
}
