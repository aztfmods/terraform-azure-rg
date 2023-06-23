output "group" {
  value = azurerm_resource_group.rg[0].name
}

output "groups" {
  value = azurerm_resource_group.rgs
}
