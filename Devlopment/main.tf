module "resource" {
  source   = "../Module/RG"
    resource = var.root-resource
}

module "azurerm_virtual_network" {
  source = "../Module/VNET"
  vnet = var.root-vnet
}