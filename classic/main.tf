provider "azurerm" {
  version = "~> 3.19"
  features {}
}

resource "azurerm_resource_group" "test" {
  name = "test"
  location = "West Europe"
}

output "test" {
  value = data.azurerm_resource_group.test.id
}
