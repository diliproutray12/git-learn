module "rgs" {
  source = "../../Moduls/1-azurerm_resource_group"
  resourcegroup = var.resourcegroup
}
module "vnetwork" {
  depends_on = [ module.rgs ]
  source = "../../Moduls/2-azurerm_virtual_network"
  virtualnetwork = var.virtualnetwork 
}
module "subnett" {
  depends_on = [ module.vnetwork ]
  source = "../../Moduls/3-azurerm_subnet"
  subnets = var.subnets 
}
