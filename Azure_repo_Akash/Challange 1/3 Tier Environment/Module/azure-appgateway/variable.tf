
variable "app_gtw_resource_group_name"{
    description = "Please enter the resource group name"
    type = string
}
variable "app_gtw_resource_group_location"{
    description = "Please enter the resource group location"
    type = string
}

variable "app_gtw_virtual_network_name"{
    description = "Please enter the virtual network name"
    type = string
}

variable "app_gtw_publicip_name" {
    description = "Please enter the application_gateway public ip name"
    type = string
}

variable "app_gtw_pip_alloc_method" {
    description = "Please enter the public ip allocation method"
    type = string
}

variable "app_gtw_name"{
    description = "Enter App_gateway Name"
    type = string
}

variable "app_gtw_sku"{
    description = "Enter app_gateway SKU"
    type = string
}

variable "app_gtw_sku_tier"{
    description = "Enter app_gateway SKU_tier"
    type = string
}

variable "app_gtw_sku_capacity"{
    description = "Enetr SKU capacity"
    type = string
}

variable "app_gtw_ip_config"{
    description = "Enter App gateway IP configuration Name"
    type = string
}

variable "app_gtw_frontend_port_name"{
    description = "Enter Frontend port Name"
    type = string
}

variable "app_gtw_frontend_port"{
    description = "Enter Frontend port"
    type = string
}

variable "app_gtw_frntend_ip_cnfg_name"{
    description = "Enter app gateway frontend ip configuration name"
    type = string
}

variable "app_gtw_bknd_pool_name"{
    description = "Enter backend pool name"
    type = string
}

variable "app_gtw_http_stng_name"{
    description = "Enter HTTP setting name"
    type = string
}

variable "app_gtw_cookie"{
    description = "Choose cookie-type"
    type = string
}

variable "app_gtw_http_path"{
    description = "Enter HTTP path"
    type = string
}

variable "app_gtw_http_port"{
    description = "Enter http port"
    type = string
}

variable "app_gtw_http_protocol" {
    description = "Enter Http protocol"
    type = string
}

variable "app_gtw_rto"{
    description = "Enter request time out"
    type = string
}

variable "app_gtw_listener_name"{
    description = "Enter Listener name"
    type = string
}

variable "app_gtw_http_listener_protocol"{
    description = "Enter listener protocol"
    type = string
}

variable "app_gtw_routing_rule_name"{
    description = "Enter routing rule name"
    type = string
}

variable "app_gtw_routing_rule_type"{
    description = "Define Routing type"
    type = string
}

variable "app_gtw_subnetid" {
    description = "Enter Subnet for app gateway"
    type = string
}