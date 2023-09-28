
#=------------------------------------------------------
#RESOURCE GROUP-----------------------------------------




variable "az_resource_group_name" {
  description = "Please Enter the Resource Group Name"
  type = string 
}

variable "az_resource_group_location" {
  description = "Please Enter the Resource Group location"
  default = "centralindia"   
}





#----------------------------------------------------------------
#STORAGE ACCOUNT-------------------------------------------------




variable "az_strg_acc_name" {
  description = "Please enter Storage account Name in Small Letters"
  type = string
} 

variable "az_strg_acc_tier" {
  description = "Please enter the account tier For storage account"
  type =  string
}

variable "az_strg_repli_type" {
  description = "Please enter the replication type For storage account"
  type = string
}

variable "az_strg_container_name"{
    description = "Please enter the Storage container name"
    type = string
}

variable "az_strg_container_access_type"{
    description = "Please enter the Contaiiner access type"
    type = string
}

variable "az_strg_file_share_name"{
  description = "Please enter the file share name"
  type = string
}

variable "az_strg_file_share_quota"{
  description = "Enter the file share quota in GBs"
  type = string
}




#------------------------------------------------------------------------
#VIRTUAL_NETWORK---------------------------------------------------------

variable "az_environment_name_tag" {
    description = "az"
}

variable "az_virtual_network_name" {
  description = "Please enter virtual network name"
  type = string
}

variable "az_address_space" {
  description = "Please List the Virtual Network Address Space"
  type = list
}

variable "az_address_prefix" {
  description = "Please map the Address prifexes of Subnets"
  type = map
}




#-----------------------------------------------------------------------
#NSG data-------------------------------------------------------------

variable "az_data_nsg_name" {
  description = "Please enter NSG name"
  type = string
}

variable "az_data_nsg_rules" {
  description = "Please map NSG rules"
  type = map
}



#-----------NSG web-----------------------------------------------------
variable "az_web_nsg_name" {
  description = "Please enter NSG name"
  type = string
}

variable "az_web_nsg_rules" {
  description = "Please map NSG rules"
  type = map
}  


#----------NSG GTW-------------------------------------------------------

variable "az_appgtw_nsg_name" {
  description = "Please enter NSG name"
  type = string
}

variable "az_appgtw_nsg_rules" {
  description = "Please map NSG rules"
  type = map
}  


#----------------------------------------------------------------------
#APP_GATEWAY-----------------------------------------------------------





variable "az_app_gtw_virtual_network_name"{
    description = "Please enter the virtual network name"
    type = string
}

variable "az_app_gtw_publicip_name" {
    description = "Please enter the application_gateway public ip name"
    type = string
}

variable "az_app_gtw_pip_alloc_method" {
    description = "Please enter the public ip allocation method"
    type = string
}

variable "az_app_gtw_name"{
    description = "Enter App_gateway Name"
    type = string
}

variable "az_app_gtw_sku"{
    description = "Enter app_gateway SKU"
    type = string
}

variable "az_app_gtw_sku_tier"{
    description = "Enter app_gateway SKU_tier"
    type = string
}

variable "az_app_gtw_sku_capacity"{
    description = "Enetr SKU capacity"
    type = string
}

variable "az_app_gtw_ip_config"{
    description = "Enter App gateway IP configuration Name"
    type = string
}

variable "az_app_gtw_frontend_port_name"{
    description = "Enter Frontend port Name"
    type = string
}

variable "az_app_gtw_frontend_port"{
    description = "Enter Frontend port"
    type = string
}

variable "az_app_gtw_frntend_ip_cnfg_name"{
    description = "Enter app gateway frontend ip configuration name"
    type = string
}

variable "az_app_gtw_bknd_pool_name"{
    description = "Enter backend pool name"
    type = string
}

variable "az_app_gtw_http_stng_name"{
    description = "Enter HTTP setting name"
    type = string
}

variable "az_app_gtw_cookie"{
    description = "Choose cookie-type"
    type = string
}

variable "az_app_gtw_http_path"{
    description = "Enter HTTP path"
    type = string
}

variable "az_app_gtw_http_port"{
    description = "Enter http port"
    type = string
}

variable "az_app_gtw_http_protocol" {
    description = "Enter Http protocol"
    type = string
}

variable "az_app_gtw_rto"{
    description = "Enter request time out"
    type = string
}

variable "az_app_gtw_listener_name"{
    description = "Enter Listener name"
    type = string
}

variable "az_app_gtw_http_listener_protocol"{
    description = "Enter listener protocol"
    type = string
}

variable "az_app_gtw_routing_rule_name"{
    description = "Enter routing rule name"
    type = string
}

variable "az_app_gtw_routing_rule_type"{
    description = "Define Routing type"
    type = string
}



#-----------------------------------------webvm------------------------------


variable "az_webvm_nic_name"{
    description = "Please enter Network Interface Card Name"
    type = string
}

variable "az_webvm_virtual_machine_name"{
    description = "Please enter Virtual Machine Name"
    type = string
}

variable "az_webvm_az-vm_ip_config_name"{
    description = "Please enter Ip config Name"
    type = string
}

variable "az_webvm_az-vm_ip_allocation"{
    description = "Please enter ip Allocation method"
    type = string
}

variable "az_webvm_az-vm_size"{
    description = "Please enter the size of Virtual Machine"
    type = string
}

variable "az_webvm_az-vm_usrname"{
    description = "Please enter Login Username"
    type = string
}

variable "az_webvm_az-vm_admpass"{
    description = "Please enter Login Password" 
    type = string
}

variable "az_webvm_az-vm_caching"{
    description = "Please enter caching type"
    type = string
}

variable "az_webvm_az-vm_storage_acc"{
    description = "Please enter Storage account"
    type = string
}

variable "az_webvm_az-vm_publisher"{
    description = "Please enter VM Publisher"
    type = string
}

variable "az_webvm_az-vm_offer" {
    description = "Please enter VM offer series"
    type = string
}

variable "az_webvm_az-vm_sku"{
    description = "Please enter VM operating system SKu"
    type = string
}

variable "az_webvm_az-vm_version" {
    description = "Please enter VM operating system version"
    type = string
}
