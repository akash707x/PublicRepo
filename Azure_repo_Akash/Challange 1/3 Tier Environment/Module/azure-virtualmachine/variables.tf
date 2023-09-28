variable "az-vm_resource_group_name"{
    description = "Please enter the Resource Group Name"
    type = string
}

variable "az-vm_resource_group_location"{
    description = "Please enter the Resource Group Location"
    type = string
}

variable "nic_name"{
    description = "Please enter Network Interface Card Name"
    type = string
}

variable "virtual_machine_name"{
    description = "Please enter Virtual Machine Name"
    type = string
}

variable "az-vm_virtual_network_name"{
    description = "Please enter virtual network name"
    type = string
}

variable "az-vm_ip_config_name"{
    description = "Please enter Ip config Name"
    type = string
}

variable "az-vm_subnetid"{
    description = "Please enter Subnet ID"
    type = string
}

variable "az-vm_ip_allocation"{
    description = "Please enter ip Allocation method"
    type = string
}

variable "az-vm_size"{
    description = "Please enter the size of Virtual Machine"
    type = string
}

variable "az-vm_usrname"{
    description = "Please enter Login Username"
    type = string
}

variable "az-vm_admpass"{
    description = "Please enter Login Password"   
    type = string
}

variable "az-vm_caching"{
    description = "Please enter caching type"
    type = string
}

variable "az-vm_storage_acc"{
    description = "Please enter Storage account"
    type = string
}

variable  "az-vm_publisher"{
    description = "Please enter VM Publisher"
    type = string
}

variable "az-vm_offer" {
    description = "Please enter VM offer series"
    type = string
}

variable "az-vm_sku"{
    description = "Please enter VM operating system SKu"
    type = string
}

variable "az-vm_version" {
    description = "Please enter VM operating system version"
    type = string
}