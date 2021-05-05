resource "fortios_fmg_firewall_security_policypackage" "example_008" {
  adom       = local.adom_name
  name       = var.ppkg_name
  target     = local.device_name
  vdom       = "root"
  depends_on = [fortios_fmg_jsonrpc_request.example_007]
}
