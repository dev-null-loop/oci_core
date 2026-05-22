resource "oci_core_compute_cluster" "this" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  defined_tags        = var.defined_tags
  display_name        = var.display_name
  freeform_tags       = var.freeform_tags
}
