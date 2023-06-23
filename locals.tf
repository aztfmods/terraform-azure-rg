#locals {
#  all_groups = length(var.groups) == 0 ? {
#    default = {
#      region = try(var.region, "westeurope")
#    }
#  } : var.groups
#}
