terraform {
  required_providers {
    fortios = {
      source  = "fortinetdev/fortios"
      version = "1.11.0"
    }
  }
}

provider "fortios" {
  fmg_hostname = "10.210.35.200"
  fmg_username = "devops"
  fmg_passwd   = "fortinet"
  fmg_insecure = true
}
