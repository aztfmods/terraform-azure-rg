resource "azurerm_resource_group" "rg" {
  for_each = local.all_groups

  name     = "rg-${var.workload}-${var.environment}${each.key != "default" ? "-${each.key}" : ""}${var.suffix != "" ? "-${var.suffix}" : ""}"
  location = each.value.region
}

