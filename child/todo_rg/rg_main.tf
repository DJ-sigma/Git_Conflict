resource "azurerm_resource_group" "DRK" {
  name     = var.resource_group_name
  location = var.resource_group_location
}
