 
  module "network" {
    source              = "Azure/network/azurerm"
    version             = "~> 1.1.1"
    location            = "West US 2"
    allow_rdp_traffic   = "true"
    allow_ssh_traffic   = "true"
    resource_group_name = "terraform-compute"
  }