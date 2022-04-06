output "cosmos_account_name" {
  description = "Name of the non-sql cosmos account"
  #value       = "${azurerm_cosmosdb_account[*].name}"
  value = ("${var.cosmos_api}" == "sql") ? "${azurerm_cosmosdb_account.sqlapiaccount[*].name}" : "${azurerm_cosmosdb_account.apiaccount[*].name}"
}
