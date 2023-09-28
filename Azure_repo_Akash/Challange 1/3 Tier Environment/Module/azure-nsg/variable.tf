variable "nsg_resource_group_name" {
    description = "Please enter resource group name"
    type = string
}

variable "nsg_resource_group_location" {
    description = "Please enter resource group name"
    type = string
}

variable "nsg_name"{
    description = "Please enter Network security Name"
    type = string
}

variable "nsg_rules" {
    description = "Please Map The NSG rules"
    type = map
}