terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~> 8.8.0"
    }
    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "= 2.3.7"
    }
  }
  required_version = ">= 1.5.7"
}
