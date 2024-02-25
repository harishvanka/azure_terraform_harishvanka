resource "azurerm_windows_web_app" "main" {
  name                                    = var.webapp_name
  resource_group_name                     = var.resource_group_name
  location                                = var.location
  service_plan_id                         = azurerm_service_plan.main.id
  site_config {
    always_on                             = var.site_config.always_on
    ftps_state                            = var.site_config.ftps_state
    health_check_path                     = var.site_config.health_check_path
    health_check_eviction_time_in_min     = var.site_config.health_check_eviction_time_in_min
    http2_enabled                         = var.site_config.http2_enabled
    load_balancing_mode                   = var.site_config.load_balancing_mode
    managed_pipeline_mode                 = var.site_config.managed_pipeline_mode
    minimum_tls_version                   = var.site_config.minimum_tls_version
    remote_debugging_enabled              = var.site_config.remote_debugging_enabled
    scm_minimum_tls_version               = var.site_config.scm_minimum_tls_version
    scm_use_main_ip_restriction           = var.site_config.scm_use_main_ip_restriction
    use_32_bit_worker                     = var.site_config.use_32_bit_worker
    websockets_enabled                    = var.site_config.websockets_enabled
    vnet_route_all_enabled                = var.site_config.vnet_route_all_enabled
    worker_count                          = var.site_config.worker_count
    auto_heal_enabled                     = var.site_config.auto_heal_enabled
  }
  # auth_settings {
  #   enabled                               = var.site_config.auth_settings.enabled
  #   default_provider                      = var.site_config.auth_settings.default_provider
  #   active_directory {
  #     client_id                           = var.site_config.auth_settings.active_directory.client_id
  #   }
  # } 
}