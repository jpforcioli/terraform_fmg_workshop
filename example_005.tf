resource "fortios_fmg_firewall_object_address" "example_005" {
  count      = length(var.firewall_addresses)
  adom       = local.adom_name
  comment    = var.description
  name       = format("%s%03d", var.firewall_address_name_prefix, count.index)
  type       = "ipmask"
  subnet     = var.firewall_addresses[count.index]
  depends_on = [fortios_fmg_jsonrpc_request.example_004]
}
