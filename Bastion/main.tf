# Configure the Microsoft Azure Provider.
provider "azurerm" {
    version         = ">= 2.0"
    features {}
}

resource "azurerm_subnet" "snet" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefix       = var.address_prefix
}

# Create public IP
resource "azurerm_public_ip" "pip" {
  name                = var.pip_bastion_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_bastion_host" "bastion" {
  name                = var.bastion_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = azurerm_subnet.snet.id
    public_ip_address_id = azurerm_public_ip.pip.id
  }
}