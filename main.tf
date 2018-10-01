provider "azurerm" {}

resource "azurerm_resource_group" "test" {
  name     = "Training2-RG"
  location = "West US"
}

resource "azurerm_virtual_network" "test" {
  name                = "virtualNetwork1"
  resource_group_name = "${azurerm_resource_group.test.name}"
  address_space       = ["10.0.0.0/16"]
  location            = "West US"

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }
}
