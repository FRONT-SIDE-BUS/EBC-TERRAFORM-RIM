resource "azurerm_virtual_network" "RG-MIR" {
  name                = "RG-MIR-vnet" # to change by Groupe ....
  resource_group_name = azurerm_resource_group.RG-MIR.name
  location            = azurerm_resource_group.RG-MIR.location
  address_space       = ["10.0.0.0/16"] # to change by Groupe ....

  tags = {
    environment = "Ecole_CAP_Azure"
    session     = "1"
    groupe      = "0"
  }
}