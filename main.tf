resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.workload}-${var.environment}-${var.location_short}"
  location = var.location
}
