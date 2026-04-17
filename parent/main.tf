module "rg_ka" {
  for_each = var.rg_parent
  source = "../child"
  rg_name = each.value.name
  rg_location = each.value.location
}

module "vnet" {
  for_each = var.vnet_detail
  source = "../vnet"
  vnet_name = each.value.name
  vnet_location = module.rg_ka[each.value.rg_key].rg_jagh
  rg_name = module.rg_ka[each.value.rg_key].rg_naam
  address_space = each.value.address_space
}