output "cosmosdb_mongo_user_definitions" {
  description = "All cosmosdb_mongo_user_definition resources"
  value       = azurerm_cosmosdb_mongo_user_definition.cosmosdb_mongo_user_definitions
  sensitive   = true
}
output "cosmosdb_mongo_user_definitions_cosmos_mongo_database_id" {
  description = "List of cosmos_mongo_database_id values across all cosmosdb_mongo_user_definitions"
  value       = [for k, v in azurerm_cosmosdb_mongo_user_definition.cosmosdb_mongo_user_definitions : v.cosmos_mongo_database_id]
}
output "cosmosdb_mongo_user_definitions_inherited_role_names" {
  description = "List of inherited_role_names values across all cosmosdb_mongo_user_definitions"
  value       = [for k, v in azurerm_cosmosdb_mongo_user_definition.cosmosdb_mongo_user_definitions : v.inherited_role_names]
}
output "cosmosdb_mongo_user_definitions_password" {
  description = "List of password values across all cosmosdb_mongo_user_definitions"
  value       = [for k, v in azurerm_cosmosdb_mongo_user_definition.cosmosdb_mongo_user_definitions : v.password]
  sensitive   = true
}
output "cosmosdb_mongo_user_definitions_username" {
  description = "List of username values across all cosmosdb_mongo_user_definitions"
  value       = [for k, v in azurerm_cosmosdb_mongo_user_definition.cosmosdb_mongo_user_definitions : v.username]
}

