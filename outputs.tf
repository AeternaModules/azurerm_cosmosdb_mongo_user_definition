output "cosmosdb_mongo_user_definitions_cosmos_mongo_database_id" {
  description = "Map of cosmos_mongo_database_id values across all cosmosdb_mongo_user_definitions, keyed the same as var.cosmosdb_mongo_user_definitions"
  value       = { for k, v in azurerm_cosmosdb_mongo_user_definition.cosmosdb_mongo_user_definitions : k => v.cosmos_mongo_database_id }
}
output "cosmosdb_mongo_user_definitions_inherited_role_names" {
  description = "Map of inherited_role_names values across all cosmosdb_mongo_user_definitions, keyed the same as var.cosmosdb_mongo_user_definitions"
  value       = { for k, v in azurerm_cosmosdb_mongo_user_definition.cosmosdb_mongo_user_definitions : k => v.inherited_role_names }
}
output "cosmosdb_mongo_user_definitions_password" {
  description = "Map of password values across all cosmosdb_mongo_user_definitions, keyed the same as var.cosmosdb_mongo_user_definitions"
  value       = { for k, v in azurerm_cosmosdb_mongo_user_definition.cosmosdb_mongo_user_definitions : k => v.password }
  sensitive   = true
}
output "cosmosdb_mongo_user_definitions_username" {
  description = "Map of username values across all cosmosdb_mongo_user_definitions, keyed the same as var.cosmosdb_mongo_user_definitions"
  value       = { for k, v in azurerm_cosmosdb_mongo_user_definition.cosmosdb_mongo_user_definitions : k => v.username }
}

