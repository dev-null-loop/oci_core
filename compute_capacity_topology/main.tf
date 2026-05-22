resource "oci_core_compute_capacity_topology" "this" {
  availability_domain = var.availability_domain
  capacity_source {
    capacity_type  = var.capacity_source.capacity_type
    compartment_id = var.capacity_source.compartment_id
  }
  compartment_id = var.compartment_id
  defined_tags   = var.defined_tags
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
}
