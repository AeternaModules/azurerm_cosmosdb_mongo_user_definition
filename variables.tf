variable "cosmosdb_mongo_user_definitions" {
  description = <<EOT
Map of cosmosdb_mongo_user_definitions, attributes below
Required:
    - cosmos_mongo_database_id
    - password
    - password_key_vault_id (optional, alternative to password)
    - password_key_vault_secret_name (optional, alternative to password)
    - username
Optional:
    - inherited_role_names
EOT

  type = map(object({
    cosmos_mongo_database_id       = string
    password                       = string
    password_key_vault_id          = optional(string)
    password_key_vault_secret_name = optional(string)
    username                       = string
    inherited_role_names           = optional(list(string))
  }))
}

