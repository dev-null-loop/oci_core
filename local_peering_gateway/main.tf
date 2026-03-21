resource "oci_core_local_peering_gateway" "requestor" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_ids["requestor"]
  display_name   = "requestor"
  peer_id        = oci_core_local_peering_gateway.acceptor.id
  route_table_id = var.requestor_route_table_id
}

resource "oci_core_local_peering_gateway" "acceptor" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_ids["acceptor"]
  display_name   = "acceptor"
  route_table_id = var.acceptor_route_table_id
}
