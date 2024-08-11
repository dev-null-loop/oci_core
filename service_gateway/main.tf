data "oci_core_services" "this" {}

resource "oci_core_service_gateway" "this" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  defined_tags   = var.defined_tags
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  route_table_id = var.route_table_id

  services {
    service_id = data.oci_core_services.this.services[0].id
  }
}
