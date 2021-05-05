locals {
  firewall_addresses_csv_names = [for i in local.firewall_addresses_csv : i.name]
}

resource "fortios_fmg_jsonrpc_request" "example_007" {
  json_content = <<JSON
{
  "method": "add",
  "params": [
    {
      "data": [
        {
          "name": "${var.firewall_addrgrp_name}",
          "member": ${jsonencode(local.firewall_addresses_csv_names)}
        }
      ],
      "url": "/pm/config/adom/${local.adom_name}/obj/firewall/addrgrp"
    }
  ]
}
JSON
  depends_on   = [fortios_fmg_firewall_object_address.example_006]
}
