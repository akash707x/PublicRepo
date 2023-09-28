#----------------------------------------------------------------------
#--------------------DETAILS_OF_RESOURCE_GROUP-------------------------
#----------------------------------------------------------------------

resource_group_name                 = "prod-rg"
resource_group_location             = "centralindia"




#----------------------------------------------------------------------
#--------------------------DETAILS_OF_STORAGE_ACCOUNT------------------
#----------------------------------------------------------------------





az_strg_acc_name              = "apazstorage"
az_strg_acc_tier              = "Standard"
az_strg_repli_type            = "LRS"
az_strg_container_name        = "container-az"
az_strg_container_access_type = "private"
az_strg_file_share_name       = "fileshare-ap"
az_strg_file_share_quota      = "10"


#------------------------------------------------------------------------
#-------------------------DETAILS_OF_VIRTUAL_NETWORK---------------------
#------------------------------------------------------------------------

az_environment_name_tag        = "az"
az_virtual_network_name        = "VNET-az"
az_address_space               = ["10.130.0.0/16"]
az_address_prefix              = {

    "0" = ["DATA-Subnet", "10.130.21.0/24"]
    "1" = ["WEB-Subnet", "10.130.22.0/24"]
    "2" = ["GATEWAY-Subnet", "10.130.23.0/24"]
    "3" = ["APP-Subnet", "10.130.25.0/24"]
    "4" = ["AzureBastionSubnet", "10.130.27.0/24"]
}





#--------------------------------------------------------------------------
#---------------------------DETAILS_OF_NETWORK_SECURITY_GROUP--------------
#NSG DATA------------------------------------------------------------------

az_data_nsg_name = "DATA-NSG"
az_data_nsg_rules= {
    "0" = ["AllowInboundHTTP", "101", "Inbound", "Allow", "TCP", "80", "80", "*", "*"]
    "1" = ["AllowInboundHTTPS", "102", "Inbound", "Allow", "TCP", "443", "443", "*", "*"]
    "2" = ["AllowInboundRDP", "103", "Inbound", "Allow", "TCP", "3389", "3389", "*", "*"]
    "3" = ["AllowOutboundHTTP", "104", "Outbound", "Allow", "TCP", "80", "80", "*", "*"]
    "4" = ["AllowOutboundHTTPS", "105", "Outbound", "Allow", "TCP", "443", "443", "*", "*"]
    "5" = ["AllowOutboundRDP", "106", "Outbound", "Allow", "TCP", "3389", "3389", "*", "*"]
    
}
#NSG WEB----------------------------------------------------------------------------------------

az_web_nsg_name = "WEB-NSG"
az_web_nsg_rules= {
    "0" = ["AllowInboundHTTP", "101", "Inbound", "Allow", "TCP", "80", "80", "*", "*"]
    "1" = ["AllowInboundHTTPS", "102", "Inbound", "Allow", "TCP", "443", "443", "*", "*"]
    "2" = ["AllowInboundRDP", "103", "Inbound", "Allow", "TCP", "3389", "3389", "*", "*"]
    "3" = ["AllowOutboundHTTP", "104", "Outbound", "Allow", "TCP", "80", "80", "*", "*"]
    "4" = ["AllowOutboundHTTPS", "105", "Outbound", "Allow", "TCP", "443", "443", "*", "*"]
    "5" = ["AllowOutboundRDP", "106", "Outbound", "Allow", "TCP", "3389", "3389", "*", "*"]
    "6" = ["AllowSubnetIn-01", "301", "Inbound", "Allow", "TCP", "*", "*", "10.10.1.0/28", "10.130.1.0/28"]
    "7" = ["AllowSubnetIn-03", "302", "Inbound", "Allow", "TCP", "*", "*", "10.10.1.32/28", "10.130.1.32/28"]
}    

#--NSG APPGTW-NSG--------------------------------------------------------------------------------

az_appgtw_nsg_name = "APPGTW-NSG"
az_appgtw_nsg_rules= {
    "0" = ["AllowInboundHTTP", "101", "Inbound", "Allow", "TCP", "80", "80", "*", "*"]
    "1" = ["AllowInboundHTTPS", "102", "Inbound", "Allow", "TCP", "443", "443", "*", "*"]
    "2" = ["AllowInboundRDP", "103", "Inbound", "Allow", "TCP", "3389", "3389", "*", "*"]
    "3" = ["AllowOutboundHTTP", "104", "Outbound", "Allow", "TCP", "80", "80", "*", "*"]
    "4" = ["AllowOutboundHTTPS", "105", "Outbound", "Allow", "TCP", "443", "443", "*", "*"]
    "5" = ["AllowOutboundRDP", "106", "Outbound", "Allow", "TCP", "3389", "3389", "*", "*"]
}    





#-----------------------------------------------------------------------------------
#--------------------------DETAILS_OF_APP_GATEWAY-----------------------------------
#-----------------------------------------------------------------------------------





az_app_gtw_publicip_name               = "App_Gt_PIP"
az_app_gtw_pip_alloc_method            = "Dynamic"
az_app_gtw_name                        = "app-gateway-ap"
az_app_gtw_sku                         = "Standard_Small"
az_app_gtw_sku_tier                    = "Standard"
az_app_gtw_sku_capacity                = "2"
az_app_gtw_ip_config                   = "App_gtw_ip_cnfg"
az_app_gtw_frontend_port_name          = "gtw-port"
az_app_gtw_frontend_port                = "80"
az_app_gtw_frntend_ip_cnfg_name        = "APP_gtw_frntnd_ip"
az_app_gtw_bknd_pool_name              = "backend_pool_1"
az_app_gtw_http_stng_name              = "Http"
az_app_gtw_cookie                      = "Disabled"
az_app_gtw_http_path                   = "/path1/"
az_app_gtw_http_port                   = "80"
az_app_gtw_http_protocol               = "Http"
az_app_gtw_rto                         = "60"
az_app_gtw_listener_name               = "http"
az_app_gtw_http_listener_protocol      = "Http"
az_app_gtw_routing_rule_name           = "route_1"
az_app_gtw_routing_rule_type           = "Basic"






#---------------------------------------------------------------------------------
#--------------------------DETAILS_OF_VIRTUAL-MACHINES------------------------------------
#---------------------------------------------------------------------------------
#------------webvm-----------------------------------------------------------


az_webvm_nic_name                           = "webvm-nic"
az_webvm_az-vm_ip_config_name               = "internal"
az_webvm_az-vm_ip_allocation                = "Dynamic"
az_webvm_virtual_machine_name               = "APSINVM-WEB"
az_webvm_az-vm_size                         = "Standard_F1"
az_webvm_az-vm_usrname                      = "APSINADMIN"
az_webvm_az-vm_admpass                      = "P@ssw0rd@12345"
az_webvm_az-vm_caching                      = "ReadWrite"
az_webvm_az-vm_storage_acc                  = "Standard_LRS"
az_webvm_az-vm_publisher                    = "MicrosoftWindowsServer"
az_webvm_az-vm_offer                        = "WindowsServer"
az_webvm_az-vm_sku                          = "2016-Datacenter"
az_webvm_az-vm_version                      = "latest"





