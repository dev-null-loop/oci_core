terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 4.85.0"
    }
  }
  required_version = ">= 1.5.7"
}
