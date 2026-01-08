resource "azurerm_storage_container" "blob_container" {
  name                  =  var.container_name
  storage_account_id    = data.azurerm_storage_account.stg.id
  container_access_type = "private"
}