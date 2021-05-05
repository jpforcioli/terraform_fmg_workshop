resource "fortios_fmg_firewall_object_address" "example_003" {
  count   = length(var.firewall_addresses)
  adom    = var.adom_name
  comment = var.description
  name    = format("%s%03d", var.firewall_address_name_prefix, count.index)
  type    = "ipmask"
  subnet  = var.firewall_addresses[count.index]
}
