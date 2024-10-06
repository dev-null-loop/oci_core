resource "oci_core_remote_peering_connection" "requestor" {
  compartment_id   = var.compartment_id
  drg_id           = var.drg_ids["requestor"]
  defined_tags     = var.defined_tags
  display_name     = var.display_name
  freeform_tags    = var.freeform_tags
  peer_id          = oci_core_remote_peering_connection.acceptor.id
  peer_region_name = var.peer_region_name
  provider         = oci.requestor
}

resource "oci_core_remote_peering_connection" "acceptor" {
  compartment_id = var.compartment_id
  drg_id         = var.drg_ids["acceptor"]
  display_name   = "Acceptor"
  provider       = oci.acceptor
}
