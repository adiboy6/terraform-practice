resource "azurerm_network_interface_security_group_association" "nic-sga" {
    network_interface_id      = azurerm_network_interface.nic[0].id
    network_security_group_id = azurerm_network_security_group.nsg.id
}