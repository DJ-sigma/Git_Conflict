#####  variables for data block of subnet

variable "subnet_name" {
    description = "Enter NIC Name"
    type = string
  
}

variable "vnet_name" {
    description = "Enter NIC Name"
    type = string
  
}

#####  variables for data block of Public IP to login th VM
variable "public_ip" {
    description = "Enter NIC Name"
    type = string
  
}


#####  variables for NIC Creation

variable "nic_name" {
    description = "Enter NIC Name"
    type = string
  
}

#####  variables for VM Creation
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default = "drk_rg"
}

variable "resource_group_location" {
  description = "The Azure region where the resource group will be created"
  type        = string
  default = "southindia"
}


variable "linux_virtual_machine_name" {
    description = "The name of the resource group"
  type        = string
}

variable "linux_virtual_machine_size"{

  description = "The name of the resource group"
  type        = string
}


variable "vm_admin_username" {
    description = "The name of the resource group"
  type        = string
}

variable "vm_admin_password" {
    description = "The name of the resource group"
  type        = string
}

variable "publisher_vm" {
    description = "The name of the resource group"
  type        = string
}

variable "offer_vm" {
    description = "The name of the resource group"
  type        = string
}

variable "sku_vm" {
    description = "The name of the resource group"
  type        = string
}

variable "version_vm" {
    description = "The name of the resource group"
  type        = string
}