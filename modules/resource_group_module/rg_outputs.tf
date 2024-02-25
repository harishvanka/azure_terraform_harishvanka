output "id" {
  value = azurerm_resource_group.main.id
  description = "Id of Resource Group created."
}

output "resource_group_name" {
  value = azurerm_resource_group.main.name
  description = "Name of Resource group created."
}