resource "azurerm_storage_account" "matt" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.matt.name
  location                 = azurerm_resource_group.matt.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    source = "terraform"
    environment = "staging"
    author = "matt"
  }
}


resource "azurerm_storage_account" "ryma" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.ryma.name
  location                 = azurerm_resource_group.ryma.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    source = "terraform"
    environment = "staging"
    author = "ryma"
  }
}

resource "azurerm_storage_account" "ilyasse" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.ilyasse.name
  location                 = azurerm_resource_group.ilyasse.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    source = "terraform"
    environment = "staging"
    author = "ilyasse"
  }
}