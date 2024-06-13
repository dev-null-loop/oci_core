resource "oci_core_drg" "requestor" {
  compartment_id = var.compartment_id
  defined_tags   = var.defined_tags
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  provider       = oci.requestor
}

resource "oci_core_drg" "acceptor" {
  compartment_id = var.compartment_id
  defined_tags   = var.defined_tags
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  provider       = oci.acceptor
}
