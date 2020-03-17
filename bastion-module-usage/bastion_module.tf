module "bastion" {
  source = "../Bastion"
  resource_group_name = "vm"
  location = "West US"
  virtual_network_name = "vm-vnet"
  address_prefix = "10.1.1.0/24"
  pip_bastion_name = "pip_bastion"
  bastion_name = "bastion"
}
