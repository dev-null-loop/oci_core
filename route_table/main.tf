data "oci_core_services" "these" {}

resource "oci_core_route_table" "this" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  defined_tags   = var.defined_tags
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  dynamic "route_rules" {
    for_each = var.route_rules
    iterator = rr
    content {
      description = rr.value.description
      destination = (
	can(regex("(services|objectstorage)", rr.value.destination)) ?
	[for i in data.oci_core_services.these.services[*].cidr_block : i
	  if can(regex("${rr.value.destination}", i))
	][0] :
	rr.value.destination
      )
      destination_type  = rr.value.destination_type
      network_entity_id = var.network_entity_ids[rr.value.network_entity_name]
    }
  }
}
