resource "oci_core_local_peering_gateway" "acceptor" {
  compartment_id = var.compartment_id
  vcn_id         = var.acceptor.vcn_id
  display_name   = var.acceptor.display_name
  route_table_id = var.acceptor.route_table_id
  defined_tags   = var.acceptor.defined_tags
  freeform_tags  = var.acceptor.freeform_tags
}

resource "oci_core_local_peering_gateway" "requestor" {
  compartment_id = var.compartment_id
  vcn_id         = var.requestor.vcn_id
  display_name   = var.requestor.display_name
  peer_id        = oci_core_local_peering_gateway.acceptor.id
  route_table_id = var.requestor.route_table_id
  defined_tags   = var.requestor.defined_tags
  freeform_tags  = var.requestor.freeform_tags
}
