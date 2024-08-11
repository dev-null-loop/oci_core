resource "oci_core_local_peering_gateway" "requestor" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_ids["requestor"]
  display_name   = "requestor"
  peer_id        = oci_core_local_peering_gateway.acceptor.id
}

resource "oci_core_local_peering_gateway" "acceptor" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_ids["acceptor"]
  display_name   = "acceptor"
}
