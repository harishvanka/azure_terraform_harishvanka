module "windows_webapp" {
  source = "./modules/harry-windows-webapp"
  resource_group_name = azurerm_resource_group.devnrg.name
  location = azurerm_resource_group.devnrg.location
  sku_name = "P1v2"
  os_type = "Windows"
  site_config = {
    always_on                             = false
    ftps_state                            = "FtpsOnly"
    health_check_path                     = "/test/path"
    health_check_eviction_time_in_min     = 5
    http2_enabled                         = true
    load_balancing_mode                   = "WeightedRoundRobin"
    managed_pipeline_mode                 = "Integrated"
    minimum_tls_version                   = 1.2
    remote_debugging_enabled              = true
    scm_minimum_tls_version               = 1.2
    scm_use_main_ip_restriction           = false
    use_32_bit_worker                     = false
    websockets_enabled                    = false
    vnet_route_all_enabled                = true
    worker_count                          = 2
    # auto_heal_enabled                     = var.site_config.auto_heal_enabled
  }
}