output "rgName" {
  value = var.resource_group_name
}

output "rgLocation" {
  value = var.location
}

output "bastionID" {
  value = azurerm_bastion_host.bastion.id
}

output "bastionName" {
  value = azurerm_bastion_host.bastion.name
}

output "pipID" {
  value = azurerm_public_ip.pip.id
}

output "pipAddress" {
  value = azurerm_public_ip.pip.ip_address
}