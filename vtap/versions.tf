terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 4.73.0"
    }
  }
  required_version = ">= 1.5.7"
}
