output "apiId" {
  value = azurerm_application_insights.application_insights.id
}

output "apiName" {
  value = var.application_insights_name
}