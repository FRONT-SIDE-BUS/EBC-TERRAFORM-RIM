resource "azurerm_network_interface" "RG-MIR-LABTERRA" {
  name                = "${var.vm_name_pfx}-nic"
  location            = data.azurerm_resource_group.RG-MIR-LABTERRA.westeurope
  resource_group_name = data.azurerm_resource_group.RG-MIR-LABTERRA

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.example.id
    private_ip_address_allocation = "Dynamic"
  }

  tags = {
    environment = "Ecole_CAP_Azure"
    session     = "1"
    groupe      = "0"
  }
}
