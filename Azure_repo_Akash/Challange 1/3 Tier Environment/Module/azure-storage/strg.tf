
resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = var.storage_resource_group_name
  location                 = var.storage_resource_group_location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type

  
}

resource "azurerm_storage_container" "container" {
  name                  =  var.storage_container_name
  storage_account_name  =  var.storage_account_name
  container_access_type =  var.storage_container_access_type
}
resource "azurerm_storage_share" "file_share" {
  name                 = var.storage_file_share_name
  storage_account_name = var.storage_account_name
  quota                = var.storage_file_share_quota
}