terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 8.15.0"
    }
  }
  required_version = ">= 1.5.7"
}
