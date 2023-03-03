resource "azurerm_virtual_network" "RG-MIR-LABTERRA" {
  name                = "RG-MIR-LABTERRA-vnet" # to change by Groupe ....
  resource_group_name = data.azurerm_resource_group.RG-MIR-LABTERRA
  location            = data.azurerm_resource_group.RG-MIR-LABTERRA.westeurope
  address_space       = ["10.0.0.0/16"] # to change by Groupe ....

  tags = {
    environment = "Ecole_CAP_Azure"
    session     = "1"
    groupe      = "0"
  }
}