resource "azurerm_resource_group" "RG-MIR" {
  name     = "RG-MIR-LABTERRA"
  location = "westeurope"
}

variable "vm_name_pfx" {
  description = "VM Names"
  default     = "RG-MIR-vm" #to update by Groupe#
  type        = string
}


resource "azurerm_linux_virtual_machine" "RG-MIR" {
  name                            = var.vm_name_pfx
  resource_group_name             = azurerm_resource_group.RG-MIR.name
  location                        = azurerm_resource_group.RG-MIR.location
  size                            = "Standard_B1s" #allowed: Standard_B1ls Standard_B1ms Standard_B1s Standard_B2s Standard_D2s_v3 Standard_DS1_v2
  computer_name                   = "myvm"
  admin_username                  = "adminuser"
  admin_password                  = "Password1234!"
  disable_password_authentication = false

  network_interface_ids = [
    azurerm_network_interface.RG-MIR.id,
  ]

  os_disk {
    name                 = "my-terraform-os-disk-${var.vm_name_pfx}"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
  tags = {
    environment = "Ecole_CAP_Azure"
    session     = "1"
    groupe      = "0"
  }
}