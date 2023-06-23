provider "azurerm" {
  features {}
}

module "rg" {
  source = "../"

  workload    = var.workload
  environment = var.environment
  #region      = "eastus"

  groups = {
    netw = {
      region = "westeurope"
    }
    shd = {
      region = "westeurope"
    }
  }
}
