

resource "azurerm_public_ip" "app_gtw" {
  name                = var.app_gtw_publicip_name
  resource_group_name = var.app_gtw_resource_group_name
  location            = var.app_gtw_resource_group_location
  allocation_method   = var.app_gtw_pip_alloc_method
}

resource "azurerm_application_gateway" "app_gtw" {
  name                = var.app_gtw_name
  resource_group_name = var.app_gtw_resource_group_name
  location            = var.app_gtw_resource_group_location
  sku {
    name     = var.app_gtw_sku
    tier     = var.app_gtw_sku_tier
    capacity = var.app_gtw_sku_capacity
  }

  gateway_ip_configuration {
    name      = var.app_gtw_ip_config
    subnet_id = var.app_gtw_subnetid
  }

  frontend_port {
    name = var.app_gtw_frontend_port_name
    port = var.app_gtw_frontend_port
  }

  frontend_ip_configuration {
    name                 = var.app_gtw_frntend_ip_cnfg_name
    public_ip_address_id =  azurerm_public_ip.app_gtw.id
   
  }

  backend_address_pool {
    name = var.app_gtw_bknd_pool_name
  }

  backend_http_settings {
    name                  = var.app_gtw_http_stng_name
    cookie_based_affinity = var.app_gtw_cookie
    path                  = var.app_gtw_http_path
    port                  = var.app_gtw_http_port
    protocol              = var.app_gtw_http_protocol
    request_timeout       = var.app_gtw_rto
  }

  http_listener {
    name                           = var.app_gtw_listener_name
    frontend_ip_configuration_name = var.app_gtw_frntend_ip_cnfg_name
    frontend_port_name             = var.app_gtw_frontend_port_name
    protocol                       = var.app_gtw_http_listener_protocol
  }

  request_routing_rule {
    name                       = var.app_gtw_routing_rule_name
    rule_type                  = var.app_gtw_routing_rule_type
    http_listener_name         = var.app_gtw_listener_name
    backend_address_pool_name  = var.app_gtw_bknd_pool_name
    backend_http_settings_name = var.app_gtw_http_stng_name
  }

}