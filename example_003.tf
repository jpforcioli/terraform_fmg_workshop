resource "fortios_fmg_firewall_object_address" "example_003" {
  name       = "srv_999"
  type       = "ipmask"
  comment    = var.description
  subnet     = "10.99.9.1 255.255.255.255"
  adom       = local.adom_name
  depends_on = [fortios_fmg_jsonrpc_request.example_002]
}
