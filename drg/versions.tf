terraform {
  required_providers {
    oci = {
      source                = "oracle/oci"
      configuration_aliases = [oci.requestor, oci.acceptor]
      version               = ">= 5.40.0"
    }
  }
  required_version = ">= 1.5.7"
}
