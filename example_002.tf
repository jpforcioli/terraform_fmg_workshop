resource "fortios_fmg_jsonrpc_request" "example_002" {
  json_content = <<JSON
{
  "method": "set",
  "params": [
    {
      "data": { 
          "color": 24
      },
      "url": "/pm/config/adom/${var.adom_name}/obj/firewall/address/host_001"
    }
  ]
}
JSON
}
