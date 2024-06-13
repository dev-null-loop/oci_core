resource "oci_core_drg" "this" {
  compartment_id = var.compartment_id
  defined_tags   = var.defined_tags
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  providers = {
    oci.requestor = oci.requestor
    oci.acceptor  = oci.acceptor
  }
}
