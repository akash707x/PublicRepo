
resource "azurerm_network_interface" "az-vm" {
  name                = var.nic_name
  location            = var.az-vm_resource_group_location
  resource_group_name = var.az-vm_resource_group_name

  ip_configuration {
    name                          = var.az-vm_ip_config_name
    subnet_id                     = var.az-vm_subnetid
    private_ip_address_allocation = var.az-vm_ip_allocation
  }
}

resource "azurerm_windows_virtual_machine" "az-vm" {
  name                = var.virtual_machine_name
  resource_group_name = var.az-vm_resource_group_name
  location            = var.az-vm_resource_group_location
  size                = var.az-vm_size
  admin_username      = var.az-vm_usrname
  admin_password      = var.az-vm_admpass
  network_interface_ids = [
    azurerm_network_interface.az-vm.id,
  ]

  os_disk {
    caching              = var.az-vm_caching
    storage_account_type = var.az-vm_storage_acc
  }

  source_image_reference {
    publisher = var.az-vm_publisher
    offer     = var.az-vm_offer
    sku       = var.az-vm_sku
    version   = var.az-vm_version
  }
}