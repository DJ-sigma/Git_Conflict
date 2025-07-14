
variable "subnet_name" {
  description = "The name of the resource group"
  type        = string
  
}
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default = "drk_rg"
}

variable "vnet_name" {
  description = "The name of the resource group"
  type        = "string"
}


variable "subnet_addr_prefix" {

  description = "The Azure region where the resource group will be created"
  type        = list(string)
  
  
}
