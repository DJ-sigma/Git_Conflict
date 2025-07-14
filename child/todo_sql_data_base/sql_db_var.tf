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

variable "sql_server_name" {
    description = "The Azure region where the resource group will be created"
  type        = string
}

variable "sql_db_name" {
    description = "The Azure region where the resource group will be created"
  type        = string
}

variable "sql_server_login_id" {
    description = "The Azure region where the resource group will be created"
  type        = string
}

variable "sql_server_login_pw" {
    description = "The Azure region where the resource group will be created"
  type        = string
}

