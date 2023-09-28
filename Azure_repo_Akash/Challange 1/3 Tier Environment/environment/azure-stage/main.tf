terraform {
  backend "azurerm" {}
  required_providers {
    azurerm = ">=2.60.0"
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = "true"
}


#Presentation Tier----------------------------------------------------------------------------------------------
#------------------------APP_GATEWAY-----------------------------------------------------------
#-----------------------------------------------------------------------------------------------





module "app_gtw" {
  source = "../../Module/azure-appgateway"


  app_gtw_resource_group_name     = var.az_resource_group_name
  app_gtw_resource_group_location = var.az_resource_group_location
  app_gtw_subnetid                = module.virtual_network.subnets_id[2]
  app_gtw_virtual_network_name    = var.az_virtual_network_name
  app_gtw_publicip_name           = var.az_app_gtw_publicip_name
  app_gtw_pip_alloc_method        = var.az_app_gtw_pip_alloc_method
  app_gtw_name                    = var.az_app_gtw_name
  app_gtw_sku                     = var.az_app_gtw_sku
  app_gtw_sku_tier                = var.az_app_gtw_sku_tier
  app_gtw_sku_capacity            = var.az_app_gtw_sku_capacity
  app_gtw_ip_config               = var.az_app_gtw_ip_config
  app_gtw_frontend_port_name      = var.az_app_gtw_frontend_port_name
  app_gtw_frontend_port           = var.az_app_gtw_frontend_port
  app_gtw_frntend_ip_cnfg_name    = var.az_app_gtw_frntend_ip_cnfg_name
  app_gtw_bknd_pool_name          = var.az_app_gtw_bknd_pool_name
  app_gtw_http_stng_name          = var.az_app_gtw_http_stng_name
  app_gtw_cookie                  = var.az_app_gtw_cookie
  app_gtw_http_path               = var.az_app_gtw_http_path
  app_gtw_http_port               = var.az_app_gtw_http_port
  app_gtw_http_protocol           = var.az_app_gtw_http_protocol
  app_gtw_rto                     = var.az_app_gtw_rto
  app_gtw_listener_name           = var.az_app_gtw_listener_name
  app_gtw_http_listener_protocol  = var.az_app_gtw_http_listener_protocol
  app_gtw_routing_rule_name       = var.az_app_gtw_routing_rule_name
  app_gtw_routing_rule_type       = var.az_app_gtw_routing_rule_type


}






#Application Tier-----------------------------------------------------------------------------------------------------------
#-----------------------VIRTUAL_NETWORK---------------------------------------------------------------------
#----------------------------------------------------------------------------------------------------------



module "virtual_network" {
  source = "../../Module/azure-vnet"

  virtual_network_name          = var.az_virtual_network_name
  virtual_network_address_space = var.az_address_space
  resource_group_location       = var.az_resource_group_location
  resource_group_name           = var.az_resource_group_name
  subnet_address_prefix         = var.az_address_prefix
  vnet_environment_name_tag     = var.az_environment_name_tag

}




#-----------------------------------------------------------------------------------------------------------
#-----------------------NETWORK_SECURITY_GROUP---------------------------------------------------------------------
#----------------------------------------------------------------------------------------------------------



module "nsg_web" {
  source                      = "../../Module/azure-nsg"
  nsg_name                    = var.az_web_nsg_name
  nsg_resource_group_location = var.az_resource_group_location
  nsg_resource_group_name     = var.az_resource_group_name
  nsg_rules                   = var.az_web_nsg_rules

}
module "nsg_data" {
  source                      = "../../Module/azure-nsg"
  nsg_name                    = var.az_data_nsg_name
  nsg_resource_group_location = var.az_resource_group_location
  nsg_resource_group_name     = var.az_resource_group_name
  nsg_rules                   = var.az_data_nsg_rules
}
module "nsg_appgtw" {
  source                      = "../../Module/azure-nsg"
  nsg_name                    = var.az_appgtw_nsg_name
  nsg_resource_group_location = var.az_resource_group_location
  nsg_resource_group_name     = var.az_resource_group_name
  nsg_rules                   = var.az_appgtw_nsg_rules

}









#------------------------webvm---------------------------------------------------




module "virtual_machine_webvm" {
  source = "../../Module/azure-virtualmachine"

  az-vm_subnetid                = module.virtual_network.subnets_id[1]
  az-vm_resource_group_location = var.az_resource_group_location
  az-vm_resource_group_name     = var.az_resource_group_name
  az-vm_virtual_network_name    = var.az_virtual_network_name
  nic_name                      = var.az_webvm_nic_name
  az-vm_ip_config_name          = var.az_webvm_az-vm_ip_config_name
  az-vm_ip_allocation           = var.az_webvm_az-vm_ip_allocation
  virtual_machine_name          = var.az_webvm_virtual_machine_name
  az-vm_size                    = var.az_webvm_az-vm_size
  az-vm_usrname                 = var.az_webvm_az-vm_usrname
  az-vm_admpass                 = var.az_webvm_az-vm_admpass
  az-vm_caching                 = var.az_webvm_az-vm_caching
  az-vm_storage_acc             = var.az_webvm_az-vm_storage_acc
  az-vm_publisher               = var.az_webvm_az-vm_publisher
  az-vm_offer                   = var.az_webvm_az-vm_offer
  az-vm_sku                     = var.az_webvm_az-vm_sku
  az-vm_version                 = var.az_webvm_az-vm_version

}




#Data Tier-----------------------------------------------------------------------------------------------------------
#-----------------------STORAGE_ACCOUNT---------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------



module "storage_module" {
  source                           = "../../Module/azure-storage"
  storage_account_name             = var.az_strg_acc_name
  storage_resource_group_name      = var.az_resource_group_name
  storage_resource_group_location  = var.az_resource_group_location
  storage_account_tier             = var.az_strg_acc_tier
  storage_account_replication_type = var.az_strg_repli_type
  storage_container_name           = var.az_strg_container_name
  storage_container_access_type    = var.az_strg_container_access_type
  storage_file_share_name          = var.az_strg_file_share_name
  storage_file_share_quota         = var.az_strg_file_share_quota
}




