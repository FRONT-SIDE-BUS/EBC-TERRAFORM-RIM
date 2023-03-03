resource "azurerm_network_interface" "RG-MIR" {
  name                = "${var.vm_name_pfx}-nic"
  location            = azurerm_resource_group.RG-MIR.location
  resource_group_name = azurerm_resource_group.RG-MIR.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.RG-MIR.id
    private_ip_address_allocation = "Dynamic"
  }

   tags = {
    environment = "Ecole_CAP_Azure"
     session     = "1"
     groupe      = "0"
   }
 }
