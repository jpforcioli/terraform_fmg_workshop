resource "fortios_fmg_jsonrpc_request" "example_004" {
  json_content = <<JSON
{
  "method": "set",
  "params": [
    {
      "data": { 
          "color": 24
      },
      "url": "/pm/config/adom/${local.adom_name}/obj/firewall/address/srv_999"
    }
  ]
}
JSON
  depends_on   = [fortios_fmg_firewall_object_address.example_003]
}
