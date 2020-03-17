variable "resource_group_name" {
  description = "The Resource Group on which you want to have bastion host"
}

variable "location" {
  description = "The location/region where the virtual network is created. Changing this forces a new resource to be created."
}

variable "bastion_name" {
  description = "The name of your bastion host."
}

variable "pip_bastion_name" {
  description = "The name of your public IP for bastion host"
}

variable "virtual_network_name" {
  description = "The name of your existing Virtual Network"
}

variable "address_prefix" {
  description = "The subnet address in CIDR form"
}
