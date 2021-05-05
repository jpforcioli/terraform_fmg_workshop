variable "adom_name" {
  type    = string
  default = "demo_001"
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

variable "policy_section_name" {
  type    = string
  default = "Terraform Example"
}
