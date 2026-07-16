output "cosmosdb_mongo_user_definitions_id" {
  description = "Map of id values across all cosmosdb_mongo_user_definitions, keyed the same as var.cosmosdb_mongo_user_definitions"
  value       = { for k, v in azurerm_cosmosdb_mongo_user_definition.cosmosdb_mongo_user_definitions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cosmosdb_mongo_user_definitions_cosmos_mongo_database_id" {
  description = "Map of cosmos_mongo_database_id values across all cosmosdb_mongo_user_definitions, keyed the same as var.cosmosdb_mongo_user_definitions"
  value       = { for k, v in azurerm_cosmosdb_mongo_user_definition.cosmosdb_mongo_user_definitions : k => v.cosmos_mongo_database_id if v.cosmos_mongo_database_id != null && length(v.cosmos_mongo_database_id) > 0 }
}
output "cosmosdb_mongo_user_definitions_inherited_role_names" {
  description = "Map of inherited_role_names values across all cosmosdb_mongo_user_definitions, keyed the same as var.cosmosdb_mongo_user_definitions"
  value       = { for k, v in azurerm_cosmosdb_mongo_user_definition.cosmosdb_mongo_user_definitions : k => v.inherited_role_names if v.inherited_role_names != null && length(v.inherited_role_names) > 0 }
}
output "cosmosdb_mongo_user_definitions_password" {
  description = "Map of password values across all cosmosdb_mongo_user_definitions, keyed the same as var.cosmosdb_mongo_user_definitions"
  value       = { for k, v in azurerm_cosmosdb_mongo_user_definition.cosmosdb_mongo_user_definitions : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "cosmosdb_mongo_user_definitions_username" {
  description = "Map of username values across all cosmosdb_mongo_user_definitions, keyed the same as var.cosmosdb_mongo_user_definitions"
  value       = { for k, v in azurerm_cosmosdb_mongo_user_definition.cosmosdb_mongo_user_definitions : k => v.username if v.username != null && length(v.username) > 0 }
}

