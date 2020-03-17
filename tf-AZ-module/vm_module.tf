
  module "linuxservers" {
    source              = "Azure/compute/azurerm"
    location            = "West US 2"
    vm_os_simple        = "UbuntuServer"
    vm_size             = "Standard_F2s_v2"
    count               = 2
    public_ip_dns       = ["linsimplevmipsadi"] // change to a unique name per datacenter region
    vnet_subnet_id      = "${module.network.vnet_subnets[0]}"
    resource_group_name = "vm-cluster"
  }