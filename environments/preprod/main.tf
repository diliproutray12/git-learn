module "resource" {
  source         = "../../module/resource_group"
  resource-group = var.resource-group
}
module "vnet" {
  depends_on = [module.resource]
  source     = "../../module/vnet"
  vnett      = var.vnett

}
module "subnet" {
  depends_on = [module.vnet]
  source     = "../../module/subnet"
  subnett    = var.subnett


}