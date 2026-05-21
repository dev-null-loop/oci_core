terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 3.58.0"
    }
  }
  required_version = ">= 1.5.7"
}
