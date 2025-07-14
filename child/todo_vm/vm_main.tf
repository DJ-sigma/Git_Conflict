
###  Subnet Data block calling to get the subnet-ID during NIC creation

data "azurerm_subnet" "data_block_subnet" {
  name                 = var.subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.resource_group_name
}

###  Public-IP Data block calling to get the Public-IP-ID during NIC creation

data "azurerm_public_ip" "data_block_pip" {
  name                = var.public_ip 
  resource_group_name = var.resource_group_name
}


resource "azurerm_network_interface" "todo_nic" {
  name                = var.nic_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  ip_configuration {
    public_ip_address_id          = data.azurerm_public_ip.data_block_pip.id  # Data block
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.data_block_subnet.id   # Data block
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "todo_vm" {
  name                = var.linux_virtual_machine_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  size                = "Standard_F2"
  admin_username      = var.vm_admin_username
  admin_password      = var.vm_admin_password
  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]

#   admin_ssh_key {
#     username   = "adminuser"
#     public_key = file("~/.ssh/id_rsa.pub")
#   }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = var.publisher_vm # Published ID from Azure Marketplace
    offer     = var.offer_vm     # Product ID from Azure Marketplace
    sku       = var.sku_vm       # Plan ID from Azure Marketplace
    version   = var.version_vm   # Version of the image
  }
}