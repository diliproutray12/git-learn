resource "azurerm_subnet" "snett" {
    for_each = var.subnett
    name = each.value.name
    virtual_network_name = each.value.vnet
    resource_group_name = each.value.rgname
    address_prefixes = each.value.address_prefixes
  
}