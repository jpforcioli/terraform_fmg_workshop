resource "fortios_fmg_firewall_security_policy" "example_007" {
  adom             = var.adom_name
  name             = format("Policy_%s", timestamp())
  srcaddr          = [for i in range(length(var.firewall_addresses)) : format("%s%03d", var.firewall_address_name_prefix, i)]
  srcintf          = ["any"]
  dstaddr          = ["${var.firewall_addrgrp_name}"]
  dstintf          = ["any"]
  service          = ["HTTPS", "SSH"]
  action           = "accept"
  schedule         = ["always"]
  users            = ["guest"]
  logtraffic       = "all"
  logtraffic_start = "enable"
  comments         = var.description
  package_name     = var.ppkg_name
}
