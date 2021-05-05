locals {
  policyid = fortios_fmg_firewall_security_policy.example_009.id
}

resource "fortios_fmg_jsonrpc_request" "example_010" {
  json_content = <<JSON
{
  "method": "set",
  "params": [
    {
      "data": {
          "global-label": "${var.policy_section_title.global_label}",
          "label": "${var.policy_section_title.label}"       
      },
      "url": "/pm/config/adom/${local.adom_name}/pkg/${var.ppkg_name}/firewall/policy/${local.policyid}"
    }
  ]
}
JSON
  depends_on   = [fortios_fmg_firewall_security_policy.example_009]
}
