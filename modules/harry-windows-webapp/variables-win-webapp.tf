variable app_service_name {
    description = "app service name"
    type = string
    default = ""
}

variable "resource_group_name" {
    description = "name of resource group"
    type = string

    # validation {
    #   condition = can(regex("rg-.*", var.resource_group_name))
    #   error_message = "Resource group name is not valid"
    # }
}

variable "location" {
    description = "Location where resources are deployed"
    type = string
}

variable "sku_name" {
    description = "Sku name of app service plan"
    type = string
}

variable "os_type" {
    description = "Operating System Type"
    type = string
}

variable "webapp_name" {
    description = "name of windows webapp"
    type = string
    default = ""
}

variable "site_config" {
  description = "Site Config Block"
  default = {
    always_on                             = null
    ftps_state                            = ""
    health_check_path                     = ""
    health_check_eviction_time_in_min     = null
    http2_enabled                         = null
    load_balancing_mode                   = ""
    managed_pipeline_mode                 = ""
    minimum_tls_version                   = null
    remote_debugging_enabled              = null
    scm_minimum_tls_version               = ""
    scm_use_main_ip_restriction           = null
    use_32_bit_worker                     = null
    websockets_enabled                    = null
    vnet_route_all_enabled                = null
    worker_count                          = null
    auto_heal_enabled                     = null
    auth_settings = {
      enabled                             = null
      default_provider                    = ""
      active_directory = {
          client_id = ""
      }
    }
  }
}