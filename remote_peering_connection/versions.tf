terraform {
  required_providers {
    oci = {
      source                = "oracle/oci"
      version               = ">= 5.40.0"
      configuration_aliases = [oci.requestor, oci.acceptor]
    }
  }
  required_version = ">= 1.5.7"
}
