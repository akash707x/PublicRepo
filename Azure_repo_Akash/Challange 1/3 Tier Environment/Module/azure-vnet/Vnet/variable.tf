variable "vnet_environment_name_tag" {
  description = "Please enter the environment Tag"
}

variable "virtual_network_name" {
  description = "Please enter Virtual Netowrk Name"
  type = string
}

variable "resource_group_location" {
  description = "Please enter resource group location"
  type = string
}

variable "resource_group_name" {
  description = "Please enter resource group name"
  type = string
}

variable "virtual_network_address_space" {
  description = "Please List the Address Space"
  type = list
}

variable "subnet_address_prefix" {
  description = "Please map the Address prefix for Subnets"
  type = map
}



