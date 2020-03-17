# Create network interface
resource "azurerm_network_interface" "nic" {
  count                     = 2
  name                      = "myNIC${count.index}"
  location                  = azurerm_resource_group.rg.location
  resource_group_name       = azurerm_resource_group.rg.name

  ip_configuration{
    name                          = "myNICConfg"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "dynamic"
  }
}