resource "azurerm_subnet" "example" {
  name                 = "internal"
  resource_group_name  = data.azurerm_resource_group.RG-MIR-LABTERRA
  virtual_network_name = azurerm_virtual_network.example
  address_prefixes     = ["10.0.2.0/24"] # to change by Groupe ....

}

