resource "fortios_fmg_devicemanager_install_policypackage" "example_011" {
  package_name = var.ppkg_name
  adom         = local.adom_name
  depends_on   = [fortios_fmg_jsonrpc_request.example_010]
}
