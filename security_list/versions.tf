terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 5.20.0"
    }
  }
  required_version = ">= 1.5.7"
}
