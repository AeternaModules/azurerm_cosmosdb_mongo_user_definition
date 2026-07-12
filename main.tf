data "azurerm_key_vault_secret" "password" {
  for_each     = { for k, v in var.cosmosdb_mongo_user_definitions : k => v if v.password_key_vault_id != null && v.password_key_vault_secret_name != null }
  name         = each.value.password_key_vault_secret_name
  key_vault_id = each.value.password_key_vault_id
}
resource "azurerm_cosmosdb_mongo_user_definition" "cosmosdb_mongo_user_definitions" {
  for_each = var.cosmosdb_mongo_user_definitions

  cosmos_mongo_database_id = each.value.cosmos_mongo_database_id
  password                 = each.value.password != null ? each.value.password : try(data.azurerm_key_vault_secret.password[each.key].value, null)
  username                 = each.value.username
  inherited_role_names     = each.value.inherited_role_names
}

