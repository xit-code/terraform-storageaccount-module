output "storage_account_name" {
  value = azurerm_storage_account.default.name
}

output "storage_account_primary_blob_endpoint" {
  value = azurerm_storage_account.default.primary_blob_endpoint
}
