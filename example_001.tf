locals {
  adom_name = format("%s%03d", var.adom_name_prefix, var.adom_id)
}
resource "fortios_fmg_system_adom" "example_001" {
  name = local.adom_name
  type = "FortiGate"
}
