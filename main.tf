# single
resource "azurerm_resource_group" "rg" {
  for_each = length(var.groups) == 0 && var.region != null ? { default = var.region } : {}

  name     = "rg-${var.workload}-${var.environment}${var.suffix != "" ? "-${var.suffix}" : ""}"
  location = each.value
}

# multiple
resource "azurerm_resource_group" "rgs" {
  for_each = var.groups

  name     = "rg-${var.workload}-${var.environment}-${each.key}${var.suffix != "" ? "-${var.suffix}" : ""}"
  location = each.value.region
}

