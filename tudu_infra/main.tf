module "resource_group" {
  source = "../modules/azure_resource_group"

  resource_group_name     = "rg_toduapp"
  resource_group_location = "centralindia"
}

module "storage_account_name" {
  source = "../modules/azurerm_storage_account"

  depends_on = [
    module.resource_group
  ]

  storage_account_name    = "sonustg12345"
  resource_group_name     = "rg_toduapp"
  resource_group_location = "centralindia"

}

module "storage_container" {
  source = "../modules/azurerm_storage_container"

  depends_on = [
    module.storage_account_name
  ]

  resource_group_name  = "rg_toduapp"
  storage_account_name = "sonustg12345"
  container_name       = "sonu-tfstate"
}
