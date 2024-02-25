variables = {
    resource_group_name = "devnrg"
    location = "eastus"
    windows_webapp_name = "test-windows-webapp"
    service_plan_id = "test-appservice-id"
    app_service_plan_name = "test-appservice"
    app_service_plan_od = "Windows"
    app_name = "test-webapp-poc"
    site_config = {
        always_on                             = false
        ftps_state                            = "FtpsOnly"
        health_check_path                     = "/test/path"
        health_check_eviction_time_in_min     = 5
        http2_enabled                         = true
        load_balancing_mode                   = "WeightedRoundRobin"
        managed_pipeline_mode                 = "Integrated"
        minimum_tls_version                   = 1.2
        remote_debugging_enabled              = false
        scm_minimum_tls_version               = 1.2
        scm_use_main_ip_restriction           = false
        use_32_bit_worker                     = false
        websockets_enabled                    = true
        vnet_route_all_enabled                = true
        worker_count                          = 2
    }
}

provider "azurerm" {
    features {}
    use_cli                     = false
    skip_provider_registration  = true
}

run "Create_App_Service_Plan" {
    command = plan
    assert {
        condition = azurerm_service_plan.main.sku_name == "P1v2"
        error_message   = "App service plan Sku is not as expected"
    }
}

