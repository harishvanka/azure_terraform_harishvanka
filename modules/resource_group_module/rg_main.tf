resource "azurerm_resource_group" "main" {
    name = var.name == "" ? local.defaultName : var.name
    location = var.location
}