
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


variable "Public_ip_name" {
  description = "The Azure region where the resource group will be created"
  type        = string

}

variable "allocation_method" {
  description = "The Azure region where the resource group will be created"
  type        = string
}