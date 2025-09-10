data "azurerm_resource_group" "default" {
  name = var.resource_group_name
}

resource "azurerm_storage_account" "default" {
  name                     = "${var.storage_account_name}${var.environment}"
  resource_group_name      = data.azurerm_resource_group.default.name
  location                 = data.azurerm_resource_group.default.location
  account_tier             = var.storage_account_tier
  account_replication_type = "GRS"

  tags = {
    environment = var.environment
  }
}
