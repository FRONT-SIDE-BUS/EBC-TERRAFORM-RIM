resource "azurerm_subnet" "RG-MIR" {
  name                 = "RG-MIR-SB-internal"
  resource_group_name  = azurerm_resource_group.RG-MIR.name
  virtual_network_name = azurerm_virtual_network.RG-MIR.name
  address_prefixes     = ["10.0.2.0/24"] # to change by Groupe ....

}