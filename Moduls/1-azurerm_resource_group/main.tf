resource "azurerm_resouse_group" "rgs" {
  for_each = var.resourcegroup
  name     = each.value.name
  location = each.value.location
}
