resource "fortios_fmg_firewall_object_address" "example_001" {
  name    = "srv_999"
  type    = "ipmask"
  comment = var.description
  subnet  = "10.99.9.1 255.255.255.255"
  adom    = var.adom_name
}
