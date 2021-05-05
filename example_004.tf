locals {
  firewall_addresses_csv = csvdecode(file("${path.module}/firewall_addresses.csv"))
}

resource "fortios_fmg_firewall_object_address" "example_004" {
  count   = length(local.firewall_addresses_csv)
  adom    = var.adom_name
  comment = var.description
  name    = local.firewall_addresses_csv[count.index].name
  type    = "ipmask"
  subnet = format(
    "%s %s",
    local.firewall_addresses_csv[count.index].ip,
    local.firewall_addresses_csv[count.index].netmask
  )
}
