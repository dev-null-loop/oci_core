resource "oci_core_default_route_table" "this" {
  compartment_id             = var.compartment_id
  defined_tags               = var.defined_tags
  display_name               = var.display_name
  freeform_tags              = var.freeform_tags
  manage_default_resource_id = var.manage_default_resource_id
  dynamic "route_rules" {
    for_each = var.route_rules
    iterator = rr
    content {
      cidr_block        = rr.value.cidr_block
      description       = rr.value.description
      destination       = rr.value.destination
      destination_type  = rr.value.destination_type
      network_entity_id = rr.value.network_entity_id
      route_type        = rr.value.route_type
    }
  }
}
