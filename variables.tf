variable "adom_id" {
  type    = number
  default = 1
}

variable "adom_name_prefix" {
  type    = string
  default = "demo_"
}

variable "device" {
  type = object({ name_prefix = string, sn_prefix = string, platform_str = string })
  default = {
    name_prefix  = "device"
    sn_prefix    = "FGT60E"
    platform_str = "FortiGate-60E"
  }
}

variable "description" {
  type    = string
  default = "Created by Terraform Fortinet Provider"
}

variable "firewall_address_name_prefix" {
  type    = string
  default = "srv_"
}

variable "firewall_addresses" {
  type = list(string)
  default = [
    "10.111.0.1 255.255.255.255",
    "10.111.0.2 255.255.255.255",
    "10.111.0.3 255.255.255.255",
    "10.111.0.4 255.255.255.255"
  ]
}

variable "firewall_addrgrp_name" {
  type    = string
  default = "grp_001"
}

variable "ppkg_name" {
  type    = string
  default = "ppkg_branches"
}

variable "policy_section_title" {
  type = object({ global_label = string, label = string })
  default = {
    global_label = "Terraform Example",
    label        = "Terraform Example"
  }
}
