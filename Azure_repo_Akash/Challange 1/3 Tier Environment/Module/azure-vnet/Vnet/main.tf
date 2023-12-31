resource "azurerm_virtual_network" "virtual_network" {
  name                = var.virtual_network_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  address_space       = var.virtual_network_address_space
  tags                = {
      Environment     = var.vnet_environment_name_tag 
    } 
}

resource "azurerm_subnet" "subnet" {
  count                = length(var.subnet_address_prefix)  
  name                 = element(var.subnet_address_prefix[count.index], 0)
  address_prefix       = element(var.subnet_address_prefix[count.index], 1)
  virtual_network_name = azurerm_virtual_network.virtual_network.name
  resource_group_name  = var.resource_group_name
  
}

