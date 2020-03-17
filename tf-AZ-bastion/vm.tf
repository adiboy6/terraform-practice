resource "azurerm_virtual_machine" "vm" {
  count                 = 2
  name                  = "vm${count.index}"
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  network_interface_ids = [element(azurerm_network_interface.nic.*.id, count.index)]
  vm_size               = "Standard_F2s_v2"

  storage_os_disk {
    name              = "myOsDisk${count.index}"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04.0-LTS"
    version   = "latest"
  }

  os_profile {
    computer_name  = "myTFVM"
    admin_username = "azureuser"
    admin_password = "Password1234"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}