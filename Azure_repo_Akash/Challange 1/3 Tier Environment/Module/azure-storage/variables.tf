variable "storage_resource_group_name" {
    description = "Please enter the Resource Group name"
    type = string
}

variable "storage_resource_group_location" {
    description = "Please enter the Resource Group location"
    type = string
}

variable "storage_account_name" {
    description = "Please enter Storage account Name in Small Letters"
    type = string
}

variable "storage_account_tier" {
    description = "Please enter the account tier For storage account"
    type = string
}

variable "storage_account_replication_type" {
    description = "Please enter the replication type For storage account"
    type = string
}

variable "storage_container_name"{
    description = "Please enter the Storage container name"
    type = string
}

variable "storage_container_access_type"{
    description = "Please enter the Contaiiner access type"
    type = string
}

variable "storage_file_share_name"{
    description = "Please enter the file share name"
    type = string
}

variable "storage_file_share_quota"{
    description = "Enter the file share quota in GBs"
    type = string
}