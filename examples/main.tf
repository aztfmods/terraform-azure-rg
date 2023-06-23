provider "azurerm" {
  features {}
}

module "rg" {
  source = "../"

  workload    = var.workload
  environment = var.environment
  suffix      = "001" # if you need it

  region = "eastus"
}

#module "rgs" {
#  source = "../"
#
#  workload    = var.workload
#  environment = var.environment

#  groups = {
#    network = { region = "westeurope" }
#    shared  = { region = "westeurope" }
#  }
#}
