terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 4.60.0"
    }
  }
  required_version = ">= 1.5.7"
}
