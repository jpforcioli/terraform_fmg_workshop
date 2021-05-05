locals {
  device_name = format("%s_%s_001", local.adom_name, var.device.name_prefix)
  device_sn   = format("%s%010d", var.device.sn_prefix, var.adom_id)
}

resource "fortios_fmg_jsonrpc_request" "example_002" {
  json_content = <<JSON
{
  "method": "exec",
  "params": [
    {
      "data": {
        "adom": "${local.adom_name}",
        "device": {
          "name": "${local.device_name}",
          "sn": "${local.device_sn}",
          "adm_usr": "admin",
          "adm_pass": "",
          "desc": "${var.description}",
          "device action": "add_model",
          "mgmt_mode": "fmg",
          "os_ver": "6.0",
          "mr": 2,
          "os_type": "fos",
          "platform_str": "${var.device.platform_str}"
        },
        "flags": ["none"]
      },
      "url": "/dvm/cmd/add/device"
    }
  ]
}
JSON
  depends_on   = [fortios_fmg_system_adom.example_001]
}
