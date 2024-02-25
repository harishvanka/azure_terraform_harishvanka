module resource_group {
    source = "../harry-resource-group"
    resource_group_name = devnationsRg
    location = EastUs
}

resource "azurerm_service_plan" "main" {
  name                                    = "some-name"
  resource_group_name                     = module.resource_group.resource_group_name
  sku_name                                = var.sku_name
  os_type                                 = var.os_type
  location                                = module.resource_group.location
}